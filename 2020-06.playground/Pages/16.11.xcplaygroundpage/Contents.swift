//: [Previous](@previous)

import Foundation

class Solution {
    func divingBoard(_ shorter: Int, _ longer: Int, _ k: Int) -> [Int] {
        if k <= 0 { return [] }
        if shorter == longer { return [shorter * k] }
        var arr = [Int]()
        for i in 0...k {
            let value = shorter * i + longer * (k-i)
            arr.append(value)
        }
        return arr
    }
}

Solution().divingBoard(1, 2, 3)
Solution().divingBoard(1, 1, 0)

