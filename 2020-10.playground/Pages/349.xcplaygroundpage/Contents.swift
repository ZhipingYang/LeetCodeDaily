//: [Previous](@previous)

import Foundation

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return Set(nums2).filter { nums1.contains($0) }
    }
}

Solution().intersection([1,2,2,1],[2,2])

