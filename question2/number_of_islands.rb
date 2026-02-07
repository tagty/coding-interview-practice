# 問題タイトル
# Number of Islands（島の数）
# ⸻
# 問題文
# '1'（陸）と '0'（水）からなる 2 次元グリッド grid が与えられます。
# 上下左右に隣接する '1' は同じ島とみなします。
# 島の数を返してください。
# ⸻
# 入力
# 	•	grid: 2 次元配列（Array<Array<String>>）
# 	•	grid[i][j] は '1' または '0'
# ⸻
# 出力
# 	•	島の数（整数）
# ⸻
# 制約
# 	•	1 <= grid.length, grid[0].length <= 300

def dfs(grid, i, j)
  return if i < 0 || i >= grid.length || j < 0 || j >= grid[0].length
  return if grid[i][j] != '1'
  grid[i][j] = '0'
  dfs(grid, i - 1, j)
  dfs(grid, i + 1, j)
  dfs(grid, i, j - 1)
  dfs(grid, i, j + 1)
end

def num_islands(grid)
  count = 0
  grid.each_with_index do |row, i|
    row.each_with_index do |v, j|
      if v == '1'
        count += 1
        dfs(grid, i, j)
      end
    end
  end
  count
end

grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]
p num_islands(grid)
# 出力: 3
grid = [
  ["1","0","1","0"],
  ["0","1","0","1"],
  ["1","0","1","0"],
  ["0","1","0","1"]
]
p num_islands(grid)
# # 出力: 8
