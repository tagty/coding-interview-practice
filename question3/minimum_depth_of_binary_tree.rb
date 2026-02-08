# 【二分木の最小深さ】Minimum Depth of Binary Tree
# 問題
# 二分木の根ノード root が与えられます。
# 根から最も近い「葉ノード」までの最小の深さを返してください。
# 	•	深さとは、根ノードから葉ノードまでに通る ノード数 です。
# 	•	葉ノードとは、左右の子をどちらも持たないノードのことです。
# ⸻
# 入力
# 	•	二分木の根ノード root
# ⸻
# 出力
# 	•	最小深さ（整数）

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def min_depth(root)
  return 0 if root.nil?
  queue = [[root, 1]]
  until queue.empty?
    node, depth = queue.shift
    # 最初に見つかった葉が答え
    return depth if node.left.nil? && node.right.nil?
    queue << [node.left, depth + 1] if node.left
    queue << [node.right, depth + 1] if node.right
  end
end

#     3
#    / \
#   9  20
#      / \
#     15  7
root = TreeNode.new(
  3,
  TreeNode.new(9),
  TreeNode.new(
    20,
    TreeNode.new(15),
    TreeNode.new(7)
  )
)
p min_depth(root)
# 出力: 2
