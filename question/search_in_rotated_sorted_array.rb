# 問題：Search in Rotated Sorted Array
# 昇順にソートされた配列が、ある位置で回転されています。
# # 例
# nums = [4,5,6,7,0,1,2]
# この配列 nums と整数 target が与えられたとき、
# target のインデックスを返してください。
# 存在しない場合は -1 を返してください。
# ⸻
# 制約
# 	•	O(log n) の計算量で解くこと
# 	•	配列内の要素は すべて異なる
# 	•	回転は 0 回以上（回転していない場合もある）

def search(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
    mid = (left + right) / 2
    return mid if nums[mid] == target
    # 左が昇順
    if nums[left] <= nums[mid]
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    # 右が昇順
    else
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end
  -1
end

p search([4,5,6,7,0,1,2], 0) # => 4
p search([4,5,6,7,0,1,2], 3) # => -1
p search([1], 0) # => -1
