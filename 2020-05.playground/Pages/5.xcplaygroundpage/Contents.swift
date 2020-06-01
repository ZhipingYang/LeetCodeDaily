//: [Previous](@previous)

import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> String {
        let count = s.count
        if count <= 0 { return "" }
        if count == 1 { return s }
        let allC = s.map { String($0) }
        var _max = ""
        for i in 0..<allC.count {
            for j in i..<allC.count {
                let new = allC[i...j].joined()
                if validString(new), new.count > _max.count {
                    _max = new
                }
            }
        }
        return _max
    }
    func validString(_ str: String) -> Bool {
        print("======== \(str) ========")
        let arr = str.map { String($0) }
        let count = str.count
        for index in 0..<count/2 {
            let sufIndex = count-index-1
            if arr[index] != arr[sufIndex] { return false }
        }
        return true
    }
}

let num1 = Solution().longestPalindrome("aba")
let num2 = Solution().longestPalindrome("cbbd")
//let arr = "ba".map{ $0 }[0...1]
//let v = Solution().validArray(arr)

