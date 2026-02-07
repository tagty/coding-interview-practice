# 問題：Merge Two Sorted Lists（ソート済みリストのマージ）
# 2つの 昇順にソートされた連結リスト l1 と l2 が与えられます。
# これらを 1つの昇順リストにマージして返してください。
# ⸻
# 例
# 	•	l1 = 1 -> 2 -> 4
# 	•	l2 = 1 -> 3 -> 4
# 出力：1 -> 1 -> 2 -> 3 -> 4 -> 4

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

def merge_two_lists(l1, l2)
  dummy = ListNode.new(0)
  tail = dummy
  while l1 && l2
    if l1.val < l2.val
      tail.next = l1
      l1 = l1.next
    else
      tail.next = l2
      l2 = l2.next
    end
    tail = tail.next
  end
  # 残りをそのままつなぐ
  tail.next = l1 || l2
  dummy.next
end

# リスト1: 1 -> 2 -> 4
l1 = ListNode.new(1,
      ListNode.new(2,
        ListNode.new(4)))

# リスト2: 1 -> 3 -> 4
l2 = ListNode.new(1,
      ListNode.new(3,
        ListNode.new(4)))

p merge_two_lists(l1, l2)
