# 典型問題：連続部分配列の最大長
# 整数配列 a と整数 k が与えられます。
# 合計が k になる連続部分配列のうち、最も長い長さを返してください。
# ⸻
# 要求
# 	•	連続部分配列（subarray）
# 	•	存在しない場合は 0
# 	•	計算量は O(N) を目指す
# ⸻
# 制約（重要）
# 	•	正負 両方あり
# 	•	two pointers はそのままでは使えない

def longest_subarray_sum_k(a, k)
  prefix = 0
  first = {}
  first[0] = -1
  ans = 0
  a.each_with_index do |v, i|
    prefix += v
    # 初出の prefix だけ記録
    first[prefix] ||= i
    if first.key?(prefix - k)
      ans = [ans, i - first[prefix - k]].max
    end
  end
  ans
end

p longest_subarray_sum_k([1, 2, 3], 7)
# => 0
# 1,3,6
# {1:0,3:1,6:2}
# -6,-4,-1
p longest_subarray_sum_k([-2, -1, 2, 1], 1)
# => 2 # [-1, 2]
# -2,-3,-1,0
# {-2:0,-3:1,-1:2,0:3}
# 3,2,0,1
p longest_subarray_sum_k([1, -1, 5, -2, 3], 3)
# => 4 # [1, -1, 5, -2]
# 1,0,5,3,6
