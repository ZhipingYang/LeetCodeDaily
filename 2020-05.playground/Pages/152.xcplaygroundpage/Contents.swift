//: [Previous](@previous)

import Foundation

//class Solution {
//    func maxProduct(_ nums: [Int]) -> Int {
//        var _: (max:Int, min:Int) = (nums[0],nums[0])
//        (0..<nums.count).forEach {
//            let _ = nums[$0..<nums.count].reduce(1) {
//                let result = $0 * $1
//                if result > max { max = result }
//                return result
//            }
//        }
//        return max
//    }
//}

// j=0 max, j=1 min
// dp[i][j] = dp[i-1][0]
//class Solution {
//    func maxProduct(_ nums: [Int]) -> Int {
//        var max = Int.min
//        var iMax = 1
//        var iMin = 1
//        for num in nums {
//            if num < 0 { swap(&iMax, &iMin) }
//            let a = iMax * num
//            let b = iMin * num
//            iMax = a > num ? a : num
//            iMin = b < num ? b : num
//            max = iMax > max ? iMax : max
//            print("max:\(iMax) min:\(iMin) result:\(max)")
//        }
//        return max
//}

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        typealias OBJ = (max: Int, min:Int, result: Int)
        return nums.reduce(into: (1,1,Int.min) as OBJ) {
            if $1 < 0 { swap(&$0.min, &$0.max) }
            let _max = max($0.max * $1, $1)
            $0 = (_max, min($0.min * $1, $1), max(_max, $0.result))
        }.result
    }
}


print(Solution().maxProduct([2,3,-2,4]))


