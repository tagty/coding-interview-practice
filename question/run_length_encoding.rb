# 問題：文字列の圧縮（Run Length Encoding）
# お題
# 同じ文字が連続する部分を
# 「文字 + 出現回数」 に圧縮してください。
# ⸻
# 制約
# 	•	文字列は英小文字のみ
# 	•	ループ1回で解ける
# 	•	補助配列や Hash を使ってもOK

def compress(s)
  return '' if s.empty?
  result = []
  count = 1
  (1...s.length).each do |i|
    if s[i] == s[i - 1]
      count += 1
    else
      result << s[i - 1] << count.to_s
      count = 1
    end
  end
  result << s[-1] << count.to_s
  result.join
end

s = "aaabbc"
p compress(s)
# "a3b2c1"
s = "abcd"
p compress(s)
# "a1b1c1d1"
s = "aaa"
p compress(s)
# "a3"
s = ""
p compress(s)
# ""
