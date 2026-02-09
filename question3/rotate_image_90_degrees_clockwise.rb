# 🧩 問題タイトル
# 行列を90度回転させる
# Rotate Image (90 Degrees Clockwise)
# ⸻
# 📘 問題文
# n x n の正方行列 matrix が与えられます。
# この行列を 時計回りに 90 度回転させてください。
# 条件
# 	•	新しい行列を作らず
# 	•	その場（in-place） で回転させること

def rotate(matrix)
  n = matrix.size
  (0...n).each do |i|
    ((i + 1)...n).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end
  matrix.each(&:reverse!)
end

matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
p rotate(matrix)
# [
#   [7, 4, 1],
#   [8, 5, 2],
#   [9, 6, 3]
# ]
