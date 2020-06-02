//: [Previous](@previous)

import Foundation

class Solution {
    func sumNums(_ n: Int) -> Int {
        return (1...n).reduce(0) { $0+$1 }
    }
}

