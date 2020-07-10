//: [Previous](@previous)

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        let count = nums.count
        if count <= 0 { return nil }
        if count == 1 { return TreeNode(nums[0]) }
        let node = TreeNode(nums[count/2])
        let lefts = nums[0..<(count/2)].map{$0}
        print("lefts:\(lefts)")
        node.left = sortedArrayToBST(lefts)
        if (count/2+1) <= (count-1) {
            let rights = nums[(count/2+1)...(count-1)].map{$0}
            print("rights:\(rights)")
            node.right = sortedArrayToBST(rights)
        }
        return node
    }
}

Solution().sortedArrayToBST([-10,-3,0,5,9])


//1,2,3,4
//
//    2
//   / \
//  1   4
//     /
//    3
