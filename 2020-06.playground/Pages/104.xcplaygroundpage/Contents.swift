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

class Solution1 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let seq = sequence(first: [root]) {
            let arr = $0.flatMap { [$0.left, $0.right] }.compactMap { $0 }
            return arr.count > 0 ? arr : nil
        }
        return seq.reduce(0) { $1.count > 0 ? $0+1 : $0 }
    }
}

class Solution2 {
    func maxDepth(_ root: TreeNode?) -> Int {
        return root==nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right))
    }
}

