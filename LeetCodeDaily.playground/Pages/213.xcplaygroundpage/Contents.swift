//: [Previous](@previous)

import Foundation

// dp[i] = Max(dp[i-1], dp[i-2]+nums[i])

class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        if nums.count == 1 { return nums[0] }
        return max(subRob(nums.dropLast()), subRob(nums.dropFirst().map({$0})))
    }
    func subRob(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        return nums.reduce((0,0)) { (max($0.0, $0.1 + $1), $0.0) }.0
    }
}

Solution().rob([])
Solution().rob([1])
Solution().rob([1,2])
Solution().rob([2,3,2])
Solution().rob([1,2,3,1])
Solution().rob([2,7,9,3,1])
