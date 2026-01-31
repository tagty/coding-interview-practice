# 問題：Container With Most Water
# 整数配列 h が与えられます（各要素は縦線の高さ）。
# 2本の線を選んで水をためるとき、ためられる水の最大値（面積）を返してください。
# 面積は：
# area = (j - i) * min(h[i], h[j])
# ⸻
# 条件
# 	•	O(N^2) はNG（改善して O(N) を目指す）

def max_area(h)
  return 0 if h.length < 2
  i = 0
  j = h.length - 1
  ans = 0
  while i < j
    ans = [ans, (j - i) * [h[i], h[j]].min].max
    if h[i] < h[j]
      i += 1
    else
      j -= 1
    end
  end
  ans
end

h = [1,8,6,2,5,4,8,3,7]
p max_area(h)
# 答え: 49 i=1 (8) と j=8 (7) -> 幅7 × 高さ7 = 49
# i,j,area
# 0_1,8_7,8*1=8
# 1_8,8_7,7*7=49
