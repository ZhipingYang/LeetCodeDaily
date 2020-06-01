//: [Previous](@previous)

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { $0 ^ $1 }
    }
}


let number = Solution().singleNumber([1,1,2,3,3,2,7,4,5,4,5])

