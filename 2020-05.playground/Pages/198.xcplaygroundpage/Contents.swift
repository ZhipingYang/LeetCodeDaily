//: [Previous](@previous)

import Foundation

// dp[i] = Max(dp[i-1], dp[i-2]+nums[i])

class Solution {
    func rob(_ nums: [Int]) -> Int {
//        if nums.count == 0 { return 0 }
//        if nums.count == 1 { return nums[0] }
//        if nums.count == 2 { return max(nums[0], nums[1]) }
        
//        var dp = Array<Int>(repeating: 0, count: nums.count)
//        dp[0] = nums[0]
//        dp[1] = max(nums[0], nums[1])
//        for i in 2..<nums.count {
//            dp[i] = max(dp[i-1], dp[i-2] + nums[i])
//        }
//        return dp.last!

        
//        if nums.count == 0 { return 0 }
//        typealias Element = (max:Int, pre:Int)
//        return nums.reduce(Element(0,0)) { Element(max($0.max, $0.pre + $1), $0.max) }.max

        if nums.count == 0 { return 0 }
        return nums.reduce((0,0)) { (max($0.0, $0.1 + $1), $0.0) }.0
    }
}

Solution().rob([])
Solution().rob([1])
Solution().rob([1,2])
Solution().rob([1,2,3,1])
Solution().rob([2,7,9,3,1])
