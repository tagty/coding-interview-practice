# 問題：異なる文字が最大 K 種類までの最長部分文字列
# Longest Substring with At Most K Distinct Characters
# 文字列 s と整数 k が与えられます。
# 異なる文字の種類数が高々 k になるような 連続部分文字列 のうち、最長の長さを返してください。
# ⸻
# 制約
# 	•	0 <= k
# 	•	O(N) を目指してください

def longest_substring_k_distinct(s, k)
  return 0 if k == 0 || s.empty?
  freq = Hash.new(0)
  left = 0
  ans = 0
  s.chars.each_with_index do |ch, right|
    freq[ch] += 1
    while freq.size > k
      left_ch = s[left]
      freq[left_ch] -= 1
      freq.delete(left_ch) if freq[left_ch] == 0
      left += 1
    end
    ans = [ans, right - left + 1].max
  end
  ans
end

s = "eceba"
k = 2
p longest_substring_k_distinct(s, k)
# "ece" → 異なる文字 {e,c} で長さ3 => 3
# ch,left,right,ans,freq
# ---
# e,0,0,1,e,{e:1}
# c,0,1,2,ec,{e:1,c:1}
# e,0,2,3,ece,{e:2,c:1}
# b,3,3,3,ece,{e:1,b:1}
# a,3,4,3,ece,{b:1,a:1}
s = "abc"
k = 1
p longest_substring_k_distinct(s, k)
# "a" or "b" or "c" → 1 => 1
# a,0,0,1,a
# b,1,1,1,a_b
# c,2,2,1,a_b_c
s = "aa"
k = 1
p longest_substring_k_distinct(s, k)
# "aa" → 異なる文字 {a} で長さ2 => 2
s = ""
k = 3
p longest_substring_k_distinct(s, k)
# => 0
