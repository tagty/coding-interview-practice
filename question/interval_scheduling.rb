# 問題：区間の重なりを最小の個数で消す（Interval Scheduling）
# 整数の区間が intervals として与えられます。
# 各区間は [start, end]（start < end）で表されます。
# 重なり（overlap）が一切ない状態にするために、
# 削除する区間の最小個数を返してください。
# ルール（重なりの定義）
# 	•	[1,2] と [2,3] は 重なりなし（端点が接するのはOK）
# 	•	[1,3] と [2,4] は 重なりあり
# ⸻
# 例
# intervals = [[1,2],[2,3],[3,4],[1,3]]
# # [1,3] を消せばOK
# # => 1
# intervals = [[1,2],[1,2],[1,2]]
# # 2つ消す
# # => 2
# intervals = [[1,2],[2,3]]
# # 0
# ⸻
# 制約
# 	•	1 ≤ N ≤ 200_000
# 	•	start, end は整数（範囲は広い）
# 	•	O(N²) は不可
# ⸻
# 実装（Ruby）
# def erase_overlap_intervals(intervals)
#   # return Integer
# end
# ⸻
# ヒント（必要なら）
# 	•	「消す最小」＝「残す最大」と言い換えると楽
# 	•	区間は end が早いものから取るのが定石（貪欲）
# ⸻

def erase_overlap_intervals(intervals)
  return 0 if intervals.empty?
  # end 昇順
  intervals.sort_by! { |s, e| e }
  ans = 0
  # 直前に採用した区間の end
  prev_end = intervals[0][1]
  intervals[1..].each do |s, e|
    if s < prev_end
      # 重なるので削除（今の区間を捨てる）
      ans += 1
    else
      # 重ならないので採用
      prev_end = e
    end
  end
  ans
end

intervals = [[1,2],[2,3],[3,4],[1,3]]
# [1,3] を消せばOK => 1
p erase_overlap_intervals(intervals)
intervals = [[1,2],[1,2],[1,2]]
# 2つ消す => 2
p erase_overlap_intervals(intervals)
intervals = [[1,2],[2,3]]
# 0
p erase_overlap_intervals(intervals)
intervals = [[1,3],[2,4],[3,5]]
# 1
p erase_overlap_intervals(intervals)
