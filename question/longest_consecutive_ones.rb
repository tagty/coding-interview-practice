# 問題：最長の「1 が連続する」長さ（Longest Consecutive Ones）
# 0/1 からなる配列 a が与えられます。
# 連続する 1 の最大長を返してください。
# ⸻
# 制約
# 	•	a は空でない
# 	•	O(N) で解いてください

def longest_ones(a)
  cur = 0
  ans = 0
  (0..(a.length - 1)).each do |i|
    if a[i] == 1
      cur += 1
    else
      cur = 0
    end
    ans = [ans, cur].max
  end
  ans
end

a = [1,1,0,1,1,1]
p longest_ones(a)
# 最長は [1,1,1] → 3 => 3
a = [0,0,0]
p longest_ones(a)
# => 0
a = [1,1,1]
p longest_ones(a)
# => 3
