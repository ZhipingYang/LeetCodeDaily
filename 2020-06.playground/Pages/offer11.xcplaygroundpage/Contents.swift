//: [Previous](@previous)

import Foundation

// 暴力
class Solution1 {
    func minArray(_ numbers: [Int]) -> Int {
        return numbers.min()!
    }
}

// 2分
class Solution2 {
    func minArray(_ numbers: [Int]) -> Int {
        if numbers.count<=1 { return numbers[0] }
        var left = 0
        var right = numbers.count-1
        while left < right {
            let mid = ((right - left) >> 1) + left;
            if (numbers[mid] < numbers[right]) {
                right = mid
            } else if (numbers[mid] > numbers[right]) {
                left = mid + 1
            } else {
                right -= 1
            }
        }
        return numbers[left]
    }
}

Solution1().minArray([3,4,5,1,2])
Solution2().minArray([3,4,5,1,2])
Solution2().minArray([1,2,3,4,5])
Solution2().minArray([4,5,1,2,3])



