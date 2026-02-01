# 次の問題：Min Stack
# スタックに対して以下の操作をサポートするクラス（または構造）を実装してください。
# 	•	push(x)：要素 x を積む
# 	•	pop()：先頭（トップ）を取り除く（取り除いた値を返しても返さなくてもOK）
# 	•	top()：トップの値を返す
# 	•	get_min()：現在のスタック内の最小値を返す
# ⸻
# 条件
# 	•	get_min() は O(1) で動くこと（毎回全探索しない）
# 	•	push/pop/top/get_min すべて O(1) を目指す

class MinStack
  def initialize
    @stack = []
    @min_stack = []
  end

  def push(x)
    @stack << x
    @min_stack << x if @min_stack.empty? || x <= @min_stack[-1]
  end

  def pop
    return nil if @stack.empty?
    x = @stack.pop
    @min_stack.pop if x == @min_stack[-1]
    x
  end

  def top
    @stack[-1]
  end

  def get_min
    @min_stack[-1]
  end
end

min_stack = MinStack.new
min_stack.push(1)
pp min_stack
min_stack.push(2)
pp min_stack
min_stack.push(3)
pp min_stack
min_stack.pop
pp min_stack
p min_stack.top
p min_stack.get_min
