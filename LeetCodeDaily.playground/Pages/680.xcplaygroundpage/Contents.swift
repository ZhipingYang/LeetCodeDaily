//: [Previous](@previous)

import Foundation

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let arr = s.map{$0}
        var i = 0, j = arr.count-1
        var deletedLeft = false
        var deletedRight = false
        while i<j {
            if arr[i] == arr[j] {
                i += 1
                j -= 1
            } else if deletedLeft == false {
                i += 1
                deletedLeft = true
                if deletedRight { j += 1 }
            } else if deletedRight == false {
                j -= 1
                deletedRight = true
                if deletedLeft { i -= 1 }
            } else {
                return false
            }
        }
        return true
    }
}

//class Solution {
//    var b = false
//    func validPalindrome(_ s: String) -> Bool {
//        if s.count == 1 || s.count == 0 { return true }
//        if s.first == s.last {
//            return validPalindrome(String(s.dropFirst().dropLast()))
//        } else if b == false {
//            b = true
//            return validPalindrome(String(s.dropLast())) || validPalindrome(String(s.dropFirst()))
//        } else {
//            return false
//        }
//    }
//}

Solution().validPalindrome("abda")

