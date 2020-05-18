//: [Previous](@previous)

import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 1, nums[0] == target { return nums[0] }
        var leftIndex = 0
        var midIndex = nums.count/2
        var rightIndex = nums.count-1
        
        while leftIndex < rightIndex {
            let leftValue = nums[leftIndex]
            let midValue = nums[midIndex]
            let rightValue = nums[rightIndex]
            if leftValue == target { return leftIndex }
            if rightValue == target { return rightValue }
            if midValue == target { return midIndex }
            if leftIndex == rightIndex, leftValue != target {
                return -1
            }
            if midValue > target {
                midIndex = (midIndex + rightIndex)/2
                
            } else {
                
            }
        }
        
        return -1
    }
}

let index = Solution().search([1,2,3,4,5], 3)


