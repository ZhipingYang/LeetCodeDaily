//: [Previous](@previous)

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var sArr = s.map { String($0) }
        let tArr = t.map { String($0) }
        tArr.forEach { (tt) in
            if let ss = sArr.first, ss == tt { sArr.removeFirst() }
        }
        return sArr.count == 0
    }
}

Solution().isSubsequence("abc", "ahbgdc")
Solution().isSubsequence("axc", "ahbgdc")
