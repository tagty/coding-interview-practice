# 🧩 問題タイトル
# ピタゴラス数の列挙
# Enumerate Pythagorean Triples
# ⸻
# 📘 問題文
# 正の整数 w が与えられます。
# x² + y² = z² を満たす整数の組 (x, y, z) のうち、
# x ≤ y ≤ w となるものをすべて列挙してください。

def pythagorean(w)
  result = []
  (1..w).each do |x|
    x2 = x*x
    (x..w).each do |y|
      z2 = x2 + y*y
      z = Integer.sqrt(z2)
      result << [x, y, z] if z2 == z*z
    end
  end
  result
end

pythagorean(30).each { |x, y, z| puts "x=#{x} y=#{y} z=#{z}" }
