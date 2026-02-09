# 問題：3Sum（合計 0 になる三つ組）
# 整数配列 a が与えられます。
# a[i] + a[j] + a[k] == 0（i < j < k）を満たす 重複なしの三つ組をすべて返してください。
# 	•	返す順序は自由
# 	•	三つ組の中の順序も自由（ただし同じ組は1回だけ）
# ⸻
# 制約（目安）
# 	•	O(N^2) を目指してください（O(N^3) は避けたい）
# 	•	重複排除が肝です

def three_sum(a)
  ans = []
  a.sort!
  n = a.length - 1
  (0..(n - 2)).each do |i|
    break if a[i] > 0
    next if i > 0 && a[i] == a[i - 1]
    l = i + 1
    r = n
    while l < r
      sum = a[i] + a[l] + a[r]
      if sum < 0
        l += 1
      elsif sum > 0
        r -= 1
      else
        ans << [a[i], a[l], a[r]]
        l += 1
        r -= 1
        l += 1 while l < r && a[l] == a[l - 1]
        r -= 1 while l < r && a[r] == a[r + 1]
      end
    end
  end
  ans
end

a = [-1, 0, 1, 2, -1, -4]
p three_sum(a)
# 出力例（順序は自由）: [[-1, -1, 2], [-1, 0, 1]]
a = [0, 0, 0, 0]
# => [[0,0,0]]
a = [-2,0,0,2,2]
a = [-1, 0, 1]
