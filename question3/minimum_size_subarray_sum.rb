# 【最短部分配列】Minimum Size Subarray Sum
# 問題
# 正の整数配列 nums と正の整数 target が与えられます。
# 合計が target 以上 となる 連続部分配列 のうち、長さが最小のものを求めてください。
# 	•	条件を満たす部分配列が存在しない場合は 0 を返してください。
# ⸻
# 入力
# 	•	整数 target（1 <= target <= 10^9）
# 	•	正の整数配列 nums（1 <= nums.length <= 10^5, 1 <= nums[i] <= 10^4）
# ⸻
# 出力
# 	•	条件を満たす連続部分配列の 最小長（存在しなければ 0）

def min_sub_array_len(target, nums)
  left = 0
  sum = 0
  ans = Float::INFINITY
  nums.each_with_index do |x, right|
    sum += x
    while sum >= target
      ans = [ans, right - left + 1].min
      sum -= nums[left]
      left += 1
    end
  end
  ans == Float::INFINITY ? 0 : ans
end

target = 7
nums = [2,3,1,2,4,3]
p min_sub_array_len(target, nums)
# => 2   # [4,3]
# 0,[2],2
# 0,[2,3],5
# 0,[2,3,1],6
# 4,[2,3,1,2],8
# 3,[1,2,4],7
# 2,[4,3],7
target = 4
nums = [1,4,4]
p min_sub_array_len(target, nums)
# => 1   # [4]
target = 11
nums = [1,1,1,1,1,1,1,1]
p min_sub_array_len(target, nums)
# => 0
