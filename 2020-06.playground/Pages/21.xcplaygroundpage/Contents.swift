//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l_1 = l1 else { return l2 }
        guard let l_2 = l2 else { return l1 }
        
        var node: ListNode?
        if l_1.val < l_2.val {
            node = ListNode(l_1.val, mergeTwoLists(l_1.next, l_2))
        } else {
            node = ListNode(l_2.val, mergeTwoLists(l_1, l_2.next))
        }
        return node
    }
}
