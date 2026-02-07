# 問題：Valid Anagram（アナグラム判定）
# 文字列 s と t が与えられます。
# t が s の アナグラム（文字の並び替え）である場合は true、そうでなければ false を返してください。
# ⸻
# 条件
# 	•	アナグラムとは、同じ文字が同じ回数だけ含まれていることを指します（順序は不問）。
# 	•	文字は英小文字のみとします。
# ⸻
# 制約
# 	•	1 <= s.length, t.length <= 5 * 10^4

def is_anagram(s, t)
  return false if s.length != t.length
  hash = Hash.new(0)
  s.each_char { |c| hash[c] += 1 }
  t.each_char do |c|
    return false if hash[c] == 0
    hash[c] -= 1
  end
  true
end

s = "anagram"
t = "nagaram"
p is_anagram(s, t)
# → true
s = "rat"
t = "car"
p is_anagram(s, t)
# → false
