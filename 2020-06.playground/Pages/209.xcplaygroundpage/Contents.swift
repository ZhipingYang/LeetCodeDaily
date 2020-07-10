20//: [Previous](@previous)

import Foundation

class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var i = 0;
        var sum = 0;
        var len = 0;
        for j in 0..<nums.count {
            sum += nums[j];
            while (sum >= s) {
                len = len == 0 ? j - i + 1 : min(len, j - i + 1);
                sum -= nums[i];
                i += 1
            }
        }
        return len;
    }
}

Solution().minSubArrayLen(7, [2,3,1,2,4,3])

