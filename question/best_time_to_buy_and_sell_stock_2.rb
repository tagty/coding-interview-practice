# 問題：Best Time to Buy and Sell Stock II（何回でも売買OK）
# 配列 prices が与えられます。
# 好きな回数だけ「買い→売り」をしてよい（ただし同時に複数株は持てない）とき、得られる 最大利益 を返してください。
# 	•	買ったら必ず売ってから次を買う（1株だけ持てる）
# 	•	同じ日に買って売ってもOK（利益0）
# ⸻
# 要求
# 	•	O(N) で解く
# 	•	できればシンプルに
# ⸻
# ヒント（ほぼ答えの方向性）
# 上がった分だけ全部取ると最大になります。
# prices[i] > prices[i-1] なら + (prices[i] - prices[i-1])

def max_profit_multiple(prices)
  ans = 0
  (1..(prices.length - 1)).each do |i|
    if prices[i] > prices[i - 1]
      ans += prices[i] - prices[i - 1]
    end
  end
  return ans
end

prices = [7,1,5,3,6,4]
# 1→5 で +4、3→6 で +3 合計7 => 7
p max_profit_multiple(prices)
prices = [1,2,3,4,5]
# 1→5 で +4（もしくは毎日小さく取っても同じ） => 4
p max_profit_multiple(prices)
prices = [7,6,4,3,1]
# => 0
p max_profit_multiple(prices)
