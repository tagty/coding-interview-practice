# 問題：重ならない区間で“価値”を最大化（Weighted Interval Scheduling）
# 区間が jobs として与えられます。各要素は:
# [start, end, value]
# です（start < end）。
# 重ならない（end <= next_start はOK） ようにいくつか選び、
# 選んだ区間の value 合計を 最大化してください。
# 最大値（整数）を返してください。
# ⸻
# 制約
# 	•	1 ≤ N ≤ 200_000
# 	•	start/end/value は整数（範囲大）
# 	•	O(N²) は不可
# 	•	目標: O(N log N)

# arrの中で「xより大きい最初の位置」（upper_bound）
def upper_bound(arr, x)
  l = 0
  r = arr.length
  while l < r
    m = (l + r) / 2
    if arr[m] <= x
      l = m + 1
    else
      r = m
    end
  end
  l
end

def max_value_non_overlapping(jobs)
  return 0 if jobs.empty?
  jobs.sort_by! { |s, e, v| e }
  ends = jobs.map { |s, e, v| e }
  dp = Array.new(jobs.length, 0)
  jobs.each_with_index do |(s, e, v), i|
    # ends[0...i] の中で「end <= s」を満たす最大 index を探す
    # Rubyのbsearch_indexは「真になる最初」なので、自前で upper_bound を作る
    p = upper_bound(ends, s) - 1  # <= s の最後
    take = v + (p >= 0 ? dp[p] : 0)
    skip = (i > 0 ? dp[i - 1] : 0)
    dp[i] = [skip, take].max
  end
  dp[-1]
end

jobs = [
  [1, 3, 50],
  [3, 5, 20],
  [6, 19, 100],
  [2, 100, 200]
]
# 最適: [2,100,200] → 200 => 200
p max_value_non_overlapping(jobs)
jobs = [
  [1, 2, 10],
  [2, 3, 10],
  [3, 4, 10]
]
# 全部選べる → 30 => 30
p max_value_non_overlapping(jobs)
jobs = [
  [1, 4, 5],
  [2, 3, 100],
  [3, 5, 100]
]
# 最適: [2,3,100] + [3,5,100] = 200 => 200
p max_value_non_overlapping(jobs)
