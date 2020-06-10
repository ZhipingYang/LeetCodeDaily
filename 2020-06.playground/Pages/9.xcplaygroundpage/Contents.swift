//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        if x < 10 { return true }
        
        let nums = sequence(first: (x/10,x%10)) {
            if $0.0 > 0 { return ($0.0/10, $0.0%10) }
            else { return nil }
        }.map { $0.1 }
        
        for i in 0..<nums.count/2 {
            if nums[i] != nums[nums.count-i-1] { return false }
        }
        return true
    }
}

Solution().isPalindrome(101)
Solution().isPalindrome(0)
Solution().isPalindrome(11)
Solution().isPalindrome(-1)

