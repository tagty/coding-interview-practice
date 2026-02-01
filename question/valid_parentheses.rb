# 問題：Valid Parentheses
# 文字列 s（'(' , ')' , '[' , ']' , '{' , '}' だけで構成）が与えられます。
# 括弧の対応が正しい場合は true、そうでなければ false を返してください。
# 正しい例
# 	•	"()"
# 	•	"()[]{}"
# 	•	"{[()]}"
# 間違い例
# 	•	"(]"
# 	•	"([)]"
# 	•	"((("
# 	•	")("

def valid_parentheses?(s)
  stack = []
  pair = { ')' => '(', ']' => '[', '}' => '{' }
  s.each_char do |ch|
    if pair.values.include?(ch)
      stack << ch
    else
      return false if stack.empty? || stack.pop != pair[ch]
    end
  end
  stack.empty?
end

s = "()[]{}"
p valid_parentheses?(s)
s = "()"
p valid_parentheses?(s)
s = "{[()]}"
p valid_parentheses?(s)
s = "(]"
p valid_parentheses?(s)
s = "([)]"
p valid_parentheses?(s)
s = "((("
p valid_parentheses?(s)
s = ")("
p valid_parentheses?(s)
