# linked list, recursion

# Merge two sorted linked lists and return it as a sorted list. 
# The list should be made by splicing together the nodes of the first two lists.



# solusion:We model the above recurrence directly, 
# first accounting for edge cases. Specifically, 
# if either of l1 or l2 is initially null, 
# there is no merge to perform, so we simply return the non-null list. 
# Otherwise, we determine which of l1 and l2 has a smaller head, 
# and recursively set the next value for that head to the next merge result. 
# Given that both lists are null-terminated, the recursion will eventually terminate.\

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
	if !(l1 && l2)
		return l1 || l2
	elsif l1.val < l2.val
		l1.next = merge_two_lists(l1.next, l2)
		return l1
	else
		l2.next = merge_two_lists(l1, l2.next)
		return l2
  end
end

# What is time complicity for merge sort?