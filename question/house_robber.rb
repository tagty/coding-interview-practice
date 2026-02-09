# 問題：House Robber（最大金額）
# 整数配列 a が与えられます。a[i] は i 番目の家にある金額です。
# ただし 隣り合う家を同時に盗むことはできません。
# 盗める金額の 最大値を返してください。
# ⸻
# 制約
# 	•	0 ≤ a.length ≤ 200_000
# 	•	0 ≤ a[i] ≤ 10^9
# 	•	O(N²) は不可
# 	•	できれば O(1) 空間も狙ってください

def rob(a)
  return 0 if a.empty?
  return a[0] if a.length == 1
  dp = Array.new(a.length, 0)
  dp[0] = a[0]
  dp[1] = [a[0], a[1]].max
  2.upto(a.length - 1) do |i|
    skip = dp[i - 1]
    take = dp[i - 2] + a[i]
    dp[i] = [skip, take].max
  end
  dp[-1]
end

def rob(a)
  prev2 = 0
  prev1 = 0
  a.each do |money|
    cur = [prev1, prev2 + money].max
    prev2 = prev1
    prev1 = cur
  end
  prev1
end

a = [2,7,9,3,1]
# 2 + 9 + 1 = 12 => 12
# 2,[2],[2]
# 7,[7],[2,7]
# 11,[2,9],[2,7,11]
# 11,[2,9],[2,7,11,11]
# 12,[2,9,1],[2,7,11,11,12]
p rob(a)
a = [1,2,3,1]
# 1 + 3 = 4 => 4
p rob(a)
a = [2]
# => 2
p rob(a)
