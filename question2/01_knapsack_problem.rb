# 【典型問題】0/1 ナップサック問題
# 問題
# あなたは容量 W のナップサックを持っています。
# n 個の品物があり、それぞれに
# 	•	重さ weight[i]
# 	•	価値 value[i]
# が与えられています。
# 各品物は 高々1回 しか選べません（0/1）。
# ⸻
# 目的
# ナップサックの容量 W を超えない範囲で品物を選び、
# 価値の合計を最大化してください。
# ⸻
# 入力
# 	•	整数 n（品物の数）
# 	•	整数 W（ナップサックの容量）
# 	•	配列 weight（長さ n）
# 	•	配列 value（長さ n）
# ⸻
# 出力
# 	•	取り得る 最大の価値
# ⸻
# 制約（典型）
# 	•	1 ≤ n ≤ 100
# 	•	1 ≤ W ≤ 10^4

# def knapsack_01(n, w, weight, value)
#   dp = Array.new(n + 1) { Array.new(w + 1, 0) }
#   1.upto(n) do |i|
#     0.upto(w) do |cap|
#       dp[i][cap] = dp[i - 1][cap]
#       wi = weight[i - 1]
#       vi = value[i - 1]
#       if cap >= wi
#         dp[i][cap] = [dp[i][cap], dp[i - 1][cap - wi] + vi].max
#       end
#     end
#   end
#   dp[n][w]
# end

def knapsack_01(n, w, weight, value)
  dp = Array.new(w + 1, 0)
  0.upto(n - 1) do |i|
    wi = weight[i]
    vi = value[i]
    w.downto(wi) do |cap|
      dp[cap] = [dp[cap], dp[cap - wi] + vi].max
    end
  end
  dp[w]
end

n = 3
w = 7
weight = [3, 4, 2]
value  = [4, 5, 3]
p knapsack_01(n, w, weight, value)
# 出力：
# 9
# （重さ3と4の品物を選ぶ）
