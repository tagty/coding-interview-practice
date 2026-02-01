# 問題：Binary Search（基本）
# 昇順にソートされた整数配列 a と、探したい値 target が与えられます。
# target が存在すれば そのインデックス を返し、存在しなければ -1 を返してください。
# 	•	できれば O(log N) で
# 	•	重複があってもOK（どのインデックスを返してもよい）

def binary_search(a, target)
  ans = -1
  left = 0
  right = a.length - 1
  while left <= right
    mid = (left + right) / 2
    if a[mid] < target
      left = mid + 1
    elsif a[mid] > target
      right = mid - 1
    else
      return mid
    end
  end
  ans
end

a = [-5, -1, 0, 3, 9, 12]
target = 9
p binary_search(a, target)
# => 4
a = [1, 2, 3, 4, 5]
target = 6
p binary_search(a, target)
# => -1
