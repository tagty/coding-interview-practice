# 問題タイトル
# K番目に大きい要素（Kth Largest Element in an Array）
# ⸻
# 問題文
# 整数配列 nums と整数 k が与えられます。
# 配列をソートせずに、配列の中で k 番目に大きい要素 を返してください。
# ※ 重複はそのまま数えます。
# ⸻
# 制約
# 	•	1 <= k <= nums.length
# 	•	ソートしても答えは出るが、それは 最適解ではない
# 	•	時間計算量を意識すること

def find_kth_largest(nums, k)
  a = []
  nums.each do |i|
    if a.length < k
      a << i
    else
      if i > a.min
        a.delete(a.min)
        a << i
      end
    end
  end
  a.min
end

nums = [3,2,1,5,6,4]
k = 2
p find_kth_largest(nums, k)
# => 5
# 3
# 3,2
# 3,2
# 3,5
# 5,6
# 5,6
nums = [3,2,3,1,2,4,5,5,6]
k = 4
p find_kth_largest(nums, k)
# => 4
