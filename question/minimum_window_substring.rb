# 問題：最小包含部分文字列（Minimum Window Substring）
# 文字列 s と t が与えられます。
# t に含まれる文字を すべて（重複回数も含めて） 含むような s の 最短の連続部分文字列 を返してください。
# 存在しない場合は空文字 "" を返してください。
# ⸻
# 制約
# 	•	s と t は英数字（ASCII）とする
# 	•	O(N) を目指してください

def min_window(s, t)
  return "" if t.empty? || s.empty?
  need = Hash.new(0)
  t.each_char { |ch| need[ch] += 1 }
  required = need.size
  window = Hash.new(0)
  formed = 0
  left = 0
  best_len = Float::INFINITY
  best_l = 0
  s.chars.each_with_index do |ch, right|
    if need.key?(ch)
      window[ch] += 1
      formed += 1 if window[ch] == need[ch]
    end
    while formed == required
      # 更新
      if right - left + 1 < best_len
        best_len = right - left + 1
        best_l = left
      end
      # 左を縮める
      left_ch = s[left]
      if need.key?(left_ch)
        formed -= 1 if window[left_ch] == need[left_ch]
        window[left_ch] -= 1
      end
      left += 1
    end
  end
  return "" if best_len == Float::INFINITY
  s[best_l, best_len]
end

s = "ADOBECODEBANC"
t = "ABC"
p min_window(s, t)
# "BANC" => "BANC"
# A,0,0,"",{A:1}
# D,0,1,"",{A:1}
# O,0,2,"",{A:1}
# B,0,3,"",{A:1,B:1}
# E,0,4,"",{A:1,B:1}
# C,0,5,"ADOBEC",{A:1,B:1,C:1}
# O,0,6,"ADOBEC",{A:1,B:1,C:1}
# D,0,7,"ADOBEC",{A:1,B:1,C:1}
# E,0,8,"ADOBEC",{A:1,B:1,C:1}
# B,0,9,"ADOBEC",{A:1,B:2,C:1}
# A,5,10,"CODEBA",{A:1,B:1,C:1}
# N,5,11,"CODEBA",{A:1,B:1,C:1}
# C,9,12,"BANC",{A:1,B:1,C:1}
s = "a"
t = "a"
p min_window(s, t)
# => "a"
s = "a"
t = "aa"
p min_window(s, t)
# => ""
