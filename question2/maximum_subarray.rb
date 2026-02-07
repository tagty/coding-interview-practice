# 問題（典型DP）
# 整数配列 nums が与えられる。
# 連続する部分配列（空でない）のうち、
# 要素の合計が最大となる値を返せ。
# 制約
# 	•	1 <= nums.length <= 10^5
# 	•	-10^4 <= nums[i] <= 10^4

def solve(nums)
  cur = nums[0]
  best = nums[0]
  (1...nums.length).each do |i|
    cur = [cur + nums[i], nums[i]].max
    best = [best, cur].max
  end
  best
end

nums = [-2,1,-3,4,-1,2,1,-5,4]
p solve(nums)
# => 6
nums = [1]
p solve(nums)
# => 1
nums = [5,4,-1,7,8]
p solve(nums)
# => 23
