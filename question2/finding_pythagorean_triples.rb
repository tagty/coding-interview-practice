# 問題：ピタゴラス数の探索（復習）
# 正の整数配列 a が与えられます。
# この配列の中から 異なる3つの要素 (x, y, z) を選び、
# x² + y² = z²
# を満たす組み合わせが 1つでも存在するか を判定してください。
# ⸻
# 要件
# 	•	x, y, z は配列の 異なる要素
# 	•	順序は問わない（x < y < z でなくてよい）
# 	•	存在すれば true、なければ false を返す
# 	•	言語は Ruby
# 	•	計算量を意識すること（全列挙以外の方法も考えてOK）

require 'set'

def has_pythagorean_triplet?(a)
  set = a.to_set
  n = a.length - 1
  (0..n).each do |i|
    x2 = a[i] * a[i]
    ((i + 1)..n).each do |j|
      y2 = a[j] * a[j]
      z2 = x2 + y2
      z = Integer.sqrt(z2)
      return true if z * z == z2 && set.include?(z)
    end
  end
  false
end

p has_pythagorean_triplet?([3, 1, 4, 6, 5])
# true  (3² + 4² = 5²)
p has_pythagorean_triplet?([10, 4, 6, 12, 5])
# false
p has_pythagorean_triplet?([5, 12, 13])
# true
