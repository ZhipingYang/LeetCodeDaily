//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let all = s.compactMap { (c) -> String? in
            let value = String(c)
            let numberRegex = NSPredicate(format:"SELF MATCHES %@","^.*[0-9]+.*$")
            let letterRegex = NSPredicate(format:"SELF MATCHES %@","^.*[A-Za-z]+.*$")
            if numberRegex.evaluate(with: value) { return value }
            if letterRegex.evaluate(with: value) { return value.lowercased() }
            return nil
        }
        print(all)
        let count = all.count
        for i in 0..<(count)/2 {
            if all[i] != all[all.count-1-i] { return false }
        }
        return true
    }
}

Solution().isPalindrome("A man, a plan, a canal: Panama")
Solution().isPalindrome("race a car")
Solution().isPalindrome("a1 21 a")


