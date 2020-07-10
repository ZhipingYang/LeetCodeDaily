//: [Previous](@previous)

import Foundation

//class Solution {
//    func maxScoreSightseeingPair(_ A: [Int]) -> Int {
//        var max = 0
//        for i in 0..<A.count {
//            for j in (i+1)..<A.count {
//                let value = A[i] + A[j] + i - j
//                max = max<value ? value:max
//            }
//        }
//        return max
//    }
//}

class Solution {
    func maxScoreSightseeingPair(_ A: [Int]) -> Int {
        var max = 0
        for i in 0..<A.count {
            for j in (i+1)..<A.count {
                let value = A[i] + A[j] + i - j
                max = max<value ? value:max
            }
        }
        return max
    }
}

Solution().maxScoreSightseeingPair([8,1,5,2,6])
