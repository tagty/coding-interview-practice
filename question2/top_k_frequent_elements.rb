# 🧩 問題：出現回数が多い上位 K 個の要素
# 整数配列 nums と整数 k が与えられます。
# 配列内で出現回数が多い要素を上位 k 個返してください。
# ⸻
# 制約
# 	•	1 <= nums.length <= 100_000
# 	•	-10_000 <= nums[i] <= 10_000
# 	•	1 <= k <= nums 内の異なる要素数
# ⸻
# 補足
# 	•	出力の順序は問いません。
# 	•	計算量を意識して解いてください（全探索だと厳しいです）。

def top_k_frequent(nums, k)
  freq = Hash.new(0)
  nums.each { |x| freq[x] += 1 }
  # buckets[count] = [その回数だけ出た要素たち]
  buckets = Array.new(nums.length + 1) { [] }
  freq.each do |num, count|
    buckets[count] << num
  end
  ans = []
  (buckets.length - 1).downto(1) do |count|
    buckets[count].each do |num|
      ans << num
      return ans if ans.length == k
    end
  end
  ans
end

nums = [1,1,1,2,2,3]
k = 2
p top_k_frequent(nums, k)
# 出力: [1, 2]
nums = [4,4,4,5,5,6]
k = 1
p top_k_frequent(nums, k)
# 出力: [4]
