# 問題：Longest Mountain in Array
# 整数配列 a が与えられます。
# 「山（mountain）」 とは、次の条件を満たす連続部分配列です。
# 	1.	長さが 3以上
# 	2.	あるインデックス i を境に
# 	•	左側は 厳密に増加
# 	•	右側は 厳密に減少
# 例：
# [2, 1, 4, 7, 3, 2, 5]
#         ↑
#       mountain
# この配列には [1, 4, 7, 3, 2] という山があり、長さは 5。
# ⸻
# 要求
# 	•	山が存在しない場合は 0 を返す
# 	•	計算量はできれば O(N)

def longest_mountain(a)
  up = 0
  down = 0
  ans = 0
  n = a.length - 1
  (1..n).each do |i|
    if (down > 0 && a[i - 1] < a[i]) || a[i - 1] == a[i]
      up = 0
      down = 0
    end
    if a[i - 1] > a[i]
      down += 1
    elsif a[i - 1] < a[i]
      up += 1
    end
    if up > 0 && down > 0
      ans = [ans, up + down + 1].max
    end
  end
  ans
end

p longest_mountain([2,2,2])
# => 0
p longest_mountain([2,1,4,7,3,2,5])
# => 5
p longest_mountain([0,2,3,4,5,2,1,0])
# => 8
