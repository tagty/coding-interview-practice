# 問題：Maximum Depth of Binary Tree
# 二分木 が与えられます。
# この二分木の 最大の深さ（高さ） を求めてください。
# ⸻
# 定義
# 	•	木の 深さ とは、
# ルートノードから最も遠い葉ノードまでのノード数 です。
# 	•	空の木の深さは 0 とします。

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def max_depth(root)
  return 0 if root.nil?
  left = max_depth(root.left)
  right = max_depth(root.right)
  [left, right].max + 1
end

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)
p max_depth(root)
#     3
#    / \
#   9  20
#      / \
#     15  7
# 出力
# 3
