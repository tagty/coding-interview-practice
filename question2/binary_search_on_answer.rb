# 典型問題：答えを二分探索する（Binary Search on Answer）
# 整数配列 a と整数 m が与えられます。
# a を 連続する m 個の部分配列に分割するとき、
# 各部分配列の和の最大値 を最小化した値
# を返してください。
# ⸻
# 制約（想定）
# 	•	1 <= a.length <= 10^5
# 	•	1 <= m <= a.length
# 	•	a[i] >= 0（非負）

def split_array_largest_sum(a, m)
  low = a.max
  high = a.sum
  while low < high
    mid = (low + high) / 2
    pieces = 1
    cur_sum = 0
    a.each do |v|
      if cur_sum + v > mid
        pieces += 1
        cur_sum = v
      else
        cur_sum += v
      end
    end
    if pieces > m
      low = mid + 1
    else
      high = mid
    end
  end
  low
end

p split_array_largest_sum([7,2,5,10,8], 2)
# => 18 分割例: [7,2,5] と [10,8] 最大(14,18)=18 が最小
p split_array_largest_sum([1,2,3,4,5], 2)
# => 9 [1,2,3] と [4,5] → max=9
p split_array_largest_sum([1,4,4], 3)
# => 4 [1],[4],[4]
