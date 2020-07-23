//: [Previous](@previous)

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        let ood = s.count % 2
        if ood != 0  { return false }
        // '('，')'，'{'，'}'，'['，']'
        var tempArr = [Character]()
        for c in s {
            switch c {
            case "(","{","[":   tempArr.append(c)
            case ")":           if tempArr.popLast() != "("  { return false }
            case "}":           if tempArr.popLast() != "{"  { return false }
            case "]":           if tempArr.popLast() != "["  { return false }
            default:            break
            }
        }
        return tempArr.count == 0
    }
}
