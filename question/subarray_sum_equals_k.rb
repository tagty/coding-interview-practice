# 問題：部分配列和が K になる個数
# 整数配列 a と整数 k が与えられます。
# 連続する部分配列のうち、要素の和が ちょうど k になるものの 個数を返してください。
# ⸻
# 要求
# 	•	時間計算量：O(N)
# 	•	追加配列はOK（Hash）
# 	•	2重ループは禁止（N=200000想定）

def subarray_sum_count(a, k)
  count = 0
  prefix = 0
  freq = Hash.new(0)
  freq[0] = 1
  a.each do |x|
    prefix += x
    count += freq[prefix - k]
    freq[prefix] += 1
  end
  count
end

a = [1,1,1]
k = 2
p subarray_sum_count(a, k)
# [1,1] (0..1), [1,1] (1..2) の2個 => 2
# x,prefix,count,freq
# 1,1,1,{0:1,1,:1}
# 1,2,1,{0:1,1,:1,2:1}
# 1,3,2,{0:1,1,:1,2:1,3:1}
a = [1,2,3]
k = 3
# [1,2], [3] => 2
p subarray_sum_count(a, k)
a = [1,-1,0]
k = 0
# [1,-1], [0], [1,-1,0] => 3
p subarray_sum_count(a, k)
