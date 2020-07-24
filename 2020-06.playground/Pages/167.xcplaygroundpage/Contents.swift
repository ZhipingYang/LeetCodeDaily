//: [Previous](@previous)

import Foundation

class Solution1 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<(numbers.count-1) {
            let f_num = numbers[i]
            for j in (i+1)..<numbers.count {
                let s_num = numbers[j]
                if s_num == target-f_num {
                    return [i,j]
                } else if s_num > target-f_num {
                    break
                }
            }
        }
        return [-1, -1]
    }
}

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var preIndex = 0
        var lastIndex = numbers.count-1
        while preIndex < lastIndex {
            if numbers[preIndex] + numbers[lastIndex] == target {
                return [preIndex+1, lastIndex+1]
            } else if numbers[preIndex] + numbers[lastIndex] < target {
                preIndex += 1
            } else {
                lastIndex -= 1
            }
        }
        return [-1,-1]
    }
}

Solution().twoSum([2, 7, 11, 15], 9)


