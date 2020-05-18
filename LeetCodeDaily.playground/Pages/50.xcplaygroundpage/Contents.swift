//: [Previous](@previous)

import Foundation

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 { return 1 }
        if n == 1 { return x }
        if n < 0 { return 1 / myPow(x, -n) }
        let mid = myPow(x, n / 2)
        return n%2==0 ? mid * mid : mid * mid * x
    }
}

let result = Solution().myPow(2, 32)

