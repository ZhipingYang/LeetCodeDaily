//: [Previous](@previous)

import Foundation

// 给定一个正整数 n，将其拆分为至少两个正整数的和，并使这些整数的乘积最大化。 返回你可以获得的最大乘积。

// dp[i] = max(dp[i-1], dp[i-2]*2, dp[i-3]*3)

class Solution {
    func integerBreak(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: max(n+1, 7))
        dp[2...6] = [1,2,4,6,9]
        if n <= 6 { return dp[n] }
        for i in 7...n {
            dp[i] = max(dp[i-1], dp[i-2]*2, dp[i-3]*3)
        }
        return dp.last!
    }
}

class Solution1 {
    func integerBreak(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: max(n+1, 7))
        dp[2...6] = [1,2,4,6,9]
        if n > 6 { (7...n).forEach { dp[$0] = max(dp[$0-1], dp[$0-2]*2, dp[$0-3]*3) } }
        return dp[n]
    }
}

Solution().integerBreak(2)
Solution().integerBreak(3)
Solution().integerBreak(4)
Solution().integerBreak(5)
Solution().integerBreak(6)
Solution().integerBreak(7)
Solution().integerBreak(8)
Solution().integerBreak(10)


