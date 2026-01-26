# ## 問題：和が最も近いペア（Closest Two Sum）
# 整数配列 `A`（長さ N）と整数 `K` が与えられます。
# i < j を満たすペアのうち、
# [
# |A[i] + A[j] - K|
# ]
# が **最小となるペア (a, b)** を1つ返してください。
# 複数ある場合は、どれを返してもOKとします。
# ---
# ### 例
# ```text
# A = [1, 4, 7, 10], K = 15
# → [4, 10]  (4+10=14, 差1)
# A = [-5, -2, 3, 8], K = 1
# → [-2, 3] (1, 差0)
# A = [1, 2], K = 10
# → [1, 2]
# ```
# ---
# ## 制約
# * 1 ≤ N ≤ 200_000
# * -10^9 ≤ A[i], K ≤ 10^9
# * **O(N²) は不可**
# ---
# ## 期待する解法
# 1. 配列をソート
# 2. 左右ポインタ `l`, `r` を使う
# 3. `sum = A[l] + A[r]` と K の差で更新
# 4. `sum < K` なら `l += 1`、`sum > K` なら `r -= 1`
# 計算量：
# * ソート O(N log N)
# * 探索 O(N)
# ---
# ## 実装フォーマット（Ruby）
# ```ruby
# def closest_two_sum(a, k)
#   # return [x, y]
# end
# ```

def closest_two_sum(a, k)
  raise ArgumentError, "need at least 2 elements" if a.length < 2

  a.sort!
  l = 0
  r = a.length - 1

  best_diff = Float::INFINITY
  best_pair = [a[l], a[r]]

  while l < r
    sum = a[l] + a[r]
    diff = (sum - k).abs

    if diff < best_diff
      best_diff = diff
      best_pair = [a[l], a[r]]
      return best_pair if diff == 0
    end

    if sum < k
      l += 1
    else
      r -= 1
    end
  end

  best_pair
end

# A = [1, 4, 7, 10], K = 15
# → [4, 10]  (4+10=14, 差1)
p closest_two_sum([1, 4, 7, 10], 15)
# A = [-5, -2, 3, 8], K = 1
# → [-2, 3] (1, 差0)
p closest_two_sum([-5, -2, 3, 8], 1)
# A = [1, 2], K = 10
# → [1, 2]
p closest_two_sum([1, 2], 10)
