//: [Previous](@previous)

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


class Solution {
    func generateTrees(_ n: Int) -> [TreeNode?] {
        let res = [TreeNode]()
        if n == 0 { return res }
        return getNode(start: 1, end: n)
    }
    
    private func getNode(start: Int, end: Int) -> [TreeNode?] {
        if start > end { return [nil] }
        if start == end { return [TreeNode(start)] }
        var res = [TreeNode?]()
        
        for i in start...end {
            let leftTrees = getNode(start: start, end: i - 1)
            let rightTrees = getNode(start: i + 1, end: end)
            for tmpLeft in leftTrees {
                for tmpRight in rightTrees {
                    res.append(TreeNode(i, tmpLeft, tmpRight))
                }
            }
        }
        return res
    }
}
