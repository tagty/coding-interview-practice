# 🗂️ Group Anagrams
# 問題
# 文字列の配列 strs が与えられます。
# アナグラム同士をグループ化して返してください。
# アナグラムとは、文字の並びを入れ替えることで一致する文字列のことです。
# ⸻
# 入力
# 	•	文字列配列 strs
# 	•	1 <= strs.length <= 10^4
# 	•	各文字列は小文字英字のみ
# ⸻
# 出力
# 	•	アナグラムごとの配列の配列（順序は問いません）

def group_anagrams(strs)
  hash = Hash.new { |h, k| h[k] = [] }
  strs.each do |s|
    key = s.chars.sort.join
    hash[key] << s
  end
  hash.values
end

strs = ["eat","tea","tan","ate","nat","bat"]
p group_anagrams(strs)
# [
#   ["eat","tea","ate"],
#   ["tan","nat"],
#   ["bat"]
# ]
