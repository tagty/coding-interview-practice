# 問題：Upper Bound
# 昇順にソートされた整数配列 a と整数 target が与えられます。
# target より大きい値が最初に現れる インデックス を返してください。
# もし存在しなければ -1 を返します。
# ⸻
# ポイント
# 	•	条件は a[i] > target
# 	•	「見つかったら記録して左を探す」パターン
# 	•	計算量は O(log N)

def upper_bound(a, target)
  left = 0
  right = a.length - 1
  ans = -1
  while left <= right
    mid = (left + right) / 2
    if a[mid] > target
      ans = mid
      right = mid - 1
    else
      left = mid + 1
    end
  end
  ans
end

a = [1, 2, 4, 4, 5, 7]
p upper_bound(a, 4) # => 4   (a[4] = 5)
p upper_bound(a, 3) # => 2   (a[2] = 4)
p upper_bound(a, 7) # => -1
