//: [Previous](@previous)

import Foundation

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        (0..<nums.count).forEach {
            let _ = nums[$0..<nums.count].reduce(0) {
                let result = $0 + $1
                if result == k { count += 1}
                return result
            }
        }
        return count
        
//        for obj in nums {
//            let newNumbers = nums[idx..<nums.count]
//            newNumbers.reduce(0) { (pre, next) -> Int in
//                let result = pre + next
//                if result == k { count += 1 }
//                return result
//            }
//            idx += 1
//        }
//        return count
    }
}

let result = Solution().subarraySum([1,2,3], 3)
print(result)
