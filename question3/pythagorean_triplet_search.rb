# 【ピタゴラス数の探索】Pythagorean Triplet Search
# 問題
# 整数配列 a が与えられます。
# 配列の中から 異なる3つの要素 x, y, z を選んで、
# 	•	x^2 + y^2 = z^2
# を満たす組が 少なくとも1つ存在するか 判定してください。
# ⸻
# 入力
# 	•	整数配列 a
# 	•	3 <= a.length <= 2000
# 	•	-10^4 <= a[i] <= 10^4
# ⸻
# 出力
# 	•	存在するなら true
# 	•	存在しないなら false

def has_pythagorean_triplet?(a)
  squares = a.map { |x| x * x }.sort
  n = squares.length
  (n - 1).downto(2) do |z|
    l = 0
    r = z - 1
    while l < r
      sum = squares[l] + squares[r]
      return true if sum == squares[z]
      sum < squares[z] ? l += 1 : r -= 1
    end
  end
  false
end

a = [3, 1, 4, 6, 5]
p has_pythagorean_triplet?(a)
# => true  (3^2 + 4^2 = 5^2)
a = [10, 4, 6, 12, 5]
p has_pythagorean_triplet?(a)
# => false
