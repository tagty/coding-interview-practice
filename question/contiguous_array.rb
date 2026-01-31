# 問題：Contiguous Array（0 と 1 の数が同じ最長長さ）
# 配列 a（要素は 0 or 1 のみ）が与えられます。
# 0 と 1 の個数が同じになる連続部分配列のうち、最長の長さを返してください。
# ⸻
# 制約
# 	•	a.length は 1 以上
# 	•	O(N) を目指してください

def find_max_length(a)
  prefix = 0
  first = { 0 => -1 }
  ans = 0
  a.each_with_index do |x, i|
    prefix += (x == 0 ? -1 : 1)
    if first.key?(prefix)
      ans = [ans, i - first[prefix]].max
    else
      first[prefix] = i
    end
  end
  ans
end

a = [0,0,1,0,0,0,1,1]
p find_max_length(a)
# => 6  (例えば [1,0,0,0,1,1] など)
a = [0, 1, 0]
p find_max_length(a)
# [0,1] or [1,0] → 2 => 2
a = [0, 1]
p find_max_length(a)
# [0,1] → 0と1が1個ずつ => 2
