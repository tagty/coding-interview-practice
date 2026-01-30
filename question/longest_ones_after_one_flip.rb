# 問題：0を1個だけ1に変えてよいときの最長1連続（Longest Ones After One Flip）
# 0/1 の配列 a が与えられます。
# 0 を高々1個だけ 1 に変えてよいとき、連続する 1 の最大長を返してください。
# ※ 0 を変えなくてもOK（「高々1個」）
# ⸻
# 制約
# 	•	a は空でない
# 	•	O(N) を目指してください

def longest_ones_after_one_flip(a)
  left = 0
  zero_count = 0
  ans = 0
  a.each_with_index do |v, right|
    if v == 0
      zero_count += 1
    end
    while zero_count > 1
      if a[left] == 0
        zero_count -= 1
      end
      left += 1
    end
    ans = [ans, right - left + 1].max
  end
  ans
end

a = [1,0,1,1,0]
p longest_ones_after_one_flip(a)
a = [1,1,1]
p longest_ones_after_one_flip(a)
a = [0,0,0]
p longest_ones_after_one_flip(a)
a = [1,0,1,1,1,0,1]
p longest_ones_after_one_flip(a)
a = [1,0,0,1]
p longest_ones_after_one_flip(a)
