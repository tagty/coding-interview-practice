# 🧩 問題タイトル
# 指定値以下で最大のピタゴラス数の組を探索
# Find the Largest Pythagorean Triple Below a Given Value
# ⸻
# 📘 問題文
# 正の整数 n が与えられます。
# a² + b² = c² を満たす整数の組 (a, b, c) のうち、
# c ≤ n かつ a < b < c となる最大の組を1つ見つけて出力してください。
# 見つからなければ nil を出力してください。

def pythagorean_max(n)
  n.downto(3) do |c|
    c2 = c*c
    (c - 1).downto(2).each do |b|
      b2 = b*b
      a2 = c2 - b2
      break if a2 >= b2
      a = Integer.sqrt(a2)
      next if a >= b
      return [a, b, c] if a*a == a2
    end
  end
  nil
end

p pythagorean_max(10000)
