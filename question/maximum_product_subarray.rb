# 問題：最大積部分配列（Maximum Product Subarray）
# 問題文
# 整数配列 a が与えられます。
# 連続する部分配列の積のうち、最大となる値を返してください。
# ⸻
# 制約
# 	•	1 ≤ a.length ≤ 10^5
# 	•	-10 ≤ a[i] ≤ 10

def max_product(a)
  cur_max = a[0]
  cur_min = a[0]
  ans = a[0]
  (1...a.length).each do |i|
    x = a[i]
    prev_max = cur_max
    prev_min = cur_min
    cur_max = [x, prev_max * x, prev_min * x].max
    cur_min = [x, prev_max * x, prev_min * x].min
    ans = [ans, cur_max].max
  end
  ans
end

a = [2, 3, -2, 4]
# 最大積は [2,3] → 6
p max_product(a)
a = [-2, 0, -1]
# # 最大積は [0] → 0
p max_product(a)
a = [-2, 3, -4]
# # 最大積は [-2, 3, -4] → 24
p max_product(a)
