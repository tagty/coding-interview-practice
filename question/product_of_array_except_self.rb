# 🧩 問題：Product of Array Except Self
# 整数配列 a が与えられます。
# 各要素について
# 「自分以外の要素の積」を格納した配列を返してください。
# ⸻
# 🎯 制約
# 	•	割り算は禁止
# 	•	計算量 O(N) が理想

def product_except_self(a)
  n = a.length
  ans = Array.new(n, 1)
  left = 1
  (0..(n - 1)).each do |i|
    ans[i] = left
    left *= a[i]
  end
  right = 1
  (n - 1).downto(0).each do |i|
    ans[i] *= right
    right *= a[i]
  end
  ans
end

# 入力: [1,2,3,4]
a = [1,2,3,4]
p product_except_self(a)
# 出力: [24,12,8,6]
# index 0 → 2*3*4 = 24
# index 1 → 1*3*4 = 12
# index 2 → 1*2*4 = 8
# index 3 → 1*2*3 = 6
