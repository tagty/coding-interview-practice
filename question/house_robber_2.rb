# 問題：House Robber II（円形の家）
# 家が 円形に並んでいます。
# つまり 0番目の家と最後の家が隣です。
# 配列 a が与えられたとき、隣り合う家を同時に盗まずに得られる 最大金額を返してください。
# ⸻
# 制約
# 	•	0 ≤ a.length ≤ 200_000
# 	•	O(N) で解きたい（O(1) 空間歓迎）
# ⸻
# ヒント（必要なら）
# 「円形」は扱いづらいので、次の2ケースに分けるのが定石です：
# 	•	最初の家を使わない → a[1..] の直線問題
# 	•	最後の家を使わない → a[..-2] の直線問題
# 答えはその最大。

def rob_line(a)
  prev2 = 0
  prev1 = 0
  a.each do |money|
    cur = [prev1, prev2 + money].max
    prev2 = prev1
    prev1 = cur
  end
  prev1
end

def rob_circle(a)
  n = a.length
  return 0 if n == 0
  return a[0] if n == 1
  return [a[0], a[1]].max if n == 2
  rob1 = rob_line(a[1..])
  rob2 = rob_line(a[..-2])
  return [rob1, rob2].max
end

a = [2,3,2]
# 0番と2番は隣なので両方は盗めない 最適: 3 => 3
p rob_circle(a)
a = [1,2,3,1]
# 最適: 1 + 3 = 4 => 4
p rob_circle(a)
a = [1,2,3]
# 0と2が隣 最適: 3 => 3
p rob_circle(a)
