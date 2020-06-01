//: [Previous](@previous)

import Foundation

class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let sorted = heights.sorted(by: <)
        var res = 0
        for i in 0..<heights.count {
            for j in i..<heights.count {
                let current = sorted[j] * (heights.count-j)
                print("current:\(current)  i:\(i)  j:\(j)")
                if res < current { res = current }
            }
        }
        return res
    }
}

Solution().largestRectangleArea([2,1,5,6,2,3])
Solution().largestRectangleArea([2,0,2])

