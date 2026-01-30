# 問題：最長の重複なし部分文字列（Longest Substring Without Repeating Characters）
# 文字列 s が与えられます。
# 同じ文字が2回以上出ないような 連続部分文字列 のうち、最長の長さを返してください。
# （※ subsequence ではなく substring＝連続です）
# ⸻
# 制約
# 	•	O(N) を目指してください（N = s.length）

def length_of_longest_substring(s)
  last = {}
  left = 0
  ans = 0
  s.chars.each_with_index do |ch, right|
    if last.key?(ch) && last[ch] >= left
      left = last[ch] + 1
    end
    last[ch] = right
    ans = [ans, right - left + 1].max
  end
  ans
end

s = "abba"
p length_of_longest_substring(s)
# => 2
s = "abcabcbb"
p length_of_longest_substring(s)
# "abc" → 3 => 3
s = "abcade"
p length_of_longest_substring(s)
# "bcade" => 5
s = "bbbbb"
p length_of_longest_substring(s)
# "b" → 1 => 1
s = "pwwkew"
p length_of_longest_substring(s)
# "wke" → 3 => 3
s = ""
p length_of_longest_substring(s)
# => 0
s = "a"
p length_of_longest_substring(s)
# => 1
