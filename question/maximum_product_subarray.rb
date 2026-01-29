# 問題：最大積部分配列（Maximum Product Subarray）
# 問題文
# 整数配列 a が与えられます。
# 連続する部分配列の積のうち、最大となる値を返してください。
# ⸻
# 制約
# 	•	1 ≤ a.length ≤ 10^5
# 	•	-10 ≤ a[i] ≤ 10
# ⸻
# ヒント（重要）
# 	•	和と違って 積は符号が反転する
# 	•	最大値だけ覚えると壊れる
# 	•	「最小」が突然「最大」になる瞬間がある
# ⸻
# 考えるべき問い（これが本質）
# i 番目で終わる部分配列の
# 最大の積と最小の積は何か？
# ⸻
# 解けたら次に進むこと
# 	•	なぜ「最小」も持つ必要があるのか
# 	•	どこで状態が壊れるか
# 	•	和DPとの共通点と違い
# ⸻
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
