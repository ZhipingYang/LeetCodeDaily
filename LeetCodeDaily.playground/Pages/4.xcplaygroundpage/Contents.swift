//: [Previous](@previous)

import Foundation

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let new = (nums1 + nums2).sorted()
        let c = new.count
        return c&1==0 ? Double((new[c/2] + new[c/2 - 1]))/2.0 : Double(new[c/2])
    }
}


Solution().findMedianSortedArrays([1, 3],[2])
Solution().findMedianSortedArrays([1, 2],[3,4])
