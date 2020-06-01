//: [Previous](@previous)

import Foundation

//class Solution {
//    func subarraysDivByK(_ A: [Int], _ K: Int) -> Int {
//        var times = 0
//        for i in (0..<A.count) {
//            for j in i..<A.count {
//                let sum = (i...j).reduce(0) { $0 + A[$1] }
//                if sum%K == 0 {
//                    times += 1
//                }
//            }
//        }
//        return times
//    }
//}

class Solution {
    func subarraysDivByK(_ A: [Int], _ K: Int) -> Int {
        var hash = [0:1]
        var sum = 0, times = 0
        for i in A {
            sum += i
            let remainder = (sum%K + K)%K
            let same = hash[remainder] ?? 0
            times += same
            print(hash)
            hash[remainder] = same + 1
        }
        return times
    }
}

Solution().subarraysDivByK([4,5,0,-2,-3,1], 5)
//Solution().subarraysDivByK([5], 9)
//Solution().subarraysDivByK([-1,2,9], 2)

