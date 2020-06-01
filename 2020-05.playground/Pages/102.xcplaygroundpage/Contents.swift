

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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        return sequence(first: [root]) {
            let result = $0.map { [$0.left, $0.right] }.flatMap { $0 }.compactMap { $0 }
            return result.isEmpty ? nil : result
        }.map { $0.compactMap { $0.val } }
    }
}

var root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
//
root.right?.left = TreeNode(4)
root.right?.right = TreeNode(5)

let result = Solution().levelOrder(root)


