# 問題：最長の連続増加部分列（Longest Increasing Subarray）
# 整数配列 a が与えられます。
# 連続している（インデックスが途切れない）部分配列のうち、厳密に増加している（a[i] < a[i+1]）区間の 最長の長さ を返してください。
# ※「部分列（subsequence）」ではなく「部分配列（subarray）」です。飛ばしNG。
# ⸻
# 制約
# 	•	a は空でない
# 	•	時間計算量は O(N) を目指してください

def longest_increasing_subarray(a)
  cur = 1
  ans = 1
  (1..(a.length - 1)).each do |i|
    if a[i] > a[i - 1]
      cur += 1
    else
      cur = 1
    end
    ans = [ans, cur].max
  end
  ans
end

a = [1, 3, 5, 4, 7]
p longest_increasing_subarray(a)
# 最長は [1,3,5] → 長さ3 => 3
a = [2, 2, 2, 2]
p longest_increasing_subarray(a)
# 増加がないので、各要素単体が最長 → 長さ1 => 1
a = [10]
p longest_increasing_subarray(a)
# => 1
