//: [Previous](@previous)

import Foundation

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let max = candies.max() else { return [] }
        return candies.map { $0 >= max-extraCandies }
    }
}

Solution().kidsWithCandies([4,2,1,1,2], 1)
Solution().kidsWithCandies([12,1,12], 10)
