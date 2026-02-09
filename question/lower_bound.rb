# 問題：Lower Bound
# 昇順にソートされた整数配列 a と整数 target が与えられます。
# target 以上の値が最初に現れる インデックス を返してください。
# もし存在しなければ -1 を返します。
# ⸻
# ポイント
# 	•	a[i] >= target を満たす 最小の i
# 	•	通常の binary_search と 少しだけ条件が違う
# 	•	計算量は O(log N)

def lower_bound(a, target)
  ans = -1
  left = 0
  right = a.length - 1
  while left <= right
    mid = (left + right) / 2
    if a[mid] >= target
      ans = mid
      right = mid - 1
    else
      left = mid + 1
    end
  end
  ans
end

a = [1, 2, 4, 4, 5, 7]
p lower_bound(a, 4) # => 2
p lower_bound(a, 3) # => 2
# left,right,mid,a[mid]
# 0,5,2,4
p lower_bound(a, 6) # => 5
p lower_bound(a, 8) # => -1
