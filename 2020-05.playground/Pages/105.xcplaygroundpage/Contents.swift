//: [Previous](@previous)

import Foundation


/*
 前序：根 -> 左 -> 右
 中序：左 -> 根 -> 右
 后序：左 -> 右 -> 根

 preorder = [1,2,4,3,5,6]
 inorder = [4,2,1,5,3,6]
 
      1
     / \
    2   3
   /   / \
  4   5   6
 
 
 preorder = [1,3,5,6]
 inorder = [1,5,3,6]
 
     1
      \
       3
      / \
     5   6


 preorder = [1,3,5,6]
 inorder = [5,3,6,1]
 
     1
    /
   3
  / \
 5   6

 */

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

extension TreeNode {
    func printerStr() {
        let seq = sequence(first: [self]) { (nodes) -> [TreeNode]? in
            let arr = nodes.map { [$0.left, $0.right] }.flatMap{ $0 }.compactMap{$0}
            return arr.count<=0 ? nil : arr
        }
        let numbers = seq.reduce([Int]()) { (res, nodes) -> [Int] in
             return res + nodes.map { $0.val }
        }
        print(numbers)
    }
}

//class Solution {
//    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
//        print("======== preorder: \(preorder)  inorder: \(inorder)")
//        guard preorder.count == inorder.count, preorder.count > 0 else { return nil }
//        print("preorder: \(preorder)  inorder: \(inorder)")
//        var pre = preorder
//        let rootValue = pre.removeFirst()
//        let index = inorder.firstIndex(of: rootValue)!
//        let rootNode = TreeNode(rootValue)
//
//        rootNode.left = buildTree(pre[0..<index].map{$0}, inorder[0..<index].map{$0})
//        rootNode.right = buildTree(pre[index..<pre.count].map{$0}, inorder[(index+1)..<inorder.count].map{$0})
//        return rootNode
//    }
//}

class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard preorder.count == inorder.count, preorder.count > 0 else { return nil }
        let newPreorder = preorder.dropFirst()
        let indexInoder = inorder.firstIndex(of: preorder[0])!

        let rootNode = TreeNode(preorder[0])
        rootNode.left = buildTree(newPreorder.prefix(indexInoder).map{$0}, inorder.prefix(indexInoder).map{$0})
        rootNode.right = buildTree(newPreorder.suffix(newPreorder.count-indexInoder).map{$0}, inorder.suffix(inorder.count-indexInoder-1).map{$0})
        return rootNode
    }
}

Solution().buildTree([1,2,4,3,5,6], [4,2,1,5,3,6])?.printerStr()
