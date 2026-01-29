# 問題：Best Time to Buy and Sell Stock（1回だけ売買）
# 株価の配列 prices が与えられます。
# 1回だけ「買い→売り」をしてよいとき、得られる最大利益を返してください。
# （売りは買いより後の日）
# ⸻
# ヒント（答えに近いけど本質）
# 考えるのはこれだけ：
# 	•	これまで見た最安値 min_price
# 	•	今日売るなら利益はいくら？ prices[i] - min_price
# これを毎日更新する。
# ⸻

def max_profit(prices)
  ans = 0
  min_price = Float::INFINITY
  prices.each do |price|
    min_price = [min_price, price].min
    profit = price - min_price
    ans = [ans, profit].max
  end
  return ans
end

prices = [7,1,5,3,6,4]
# 1で買って6で売る → 5 => 5
p max_profit(prices)
prices = [7,6,4,3,1]
# どこで買っても儲からない => 0
p max_profit(prices)
