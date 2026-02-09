# 問題：最大部分配列和（Maximum Subarray）
# 整数配列 a が与えられます。
# 連続する部分配列（空は不可）を1つ選んだときの 要素の合計の最大値 を返してください。
# ⸻
# 制約
# 	•	1 ≤ a.length ≤ 200_000
# 	•	-10^9 ≤ a[i] ≤ 10^9
# 	•	O(N^2) は不可（O(N) で）

def max_subarray(a)
  cur = a[0]
  ans = a[0]
  (1...a.length).each do |i|
    cur = [a[i], cur + a[i]].max
    ans = [ans, cur].max
  end
  ans
end

a = [-2,1,-3,4,-1,2,1,-5,4]
# [4,-1,2,1] の和が最大で 6 => 6
p max_subarray(a)
a = [1]
# # => 1
p max_subarray(a)
a = [5,4,-1,7,8]
# => 23
p max_subarray(a)
# a = [1,2]
# p max_subarray(a)
