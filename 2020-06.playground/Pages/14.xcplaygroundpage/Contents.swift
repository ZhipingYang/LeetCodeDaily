//: [Previous](@previous)

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.first?.map({$0}) else { return "" }
        var chars = first.map { String($0) }
        
        for str in strs {
            if str.count <= 0 { return "" }
            
            let current = str.map { String($0) }
            
            print("current: \(current)")
            print("current chars: \(chars)")
            for i in 0..<(min(chars.count, current.count)) {
                if chars[i] != current[i] {
                    print("before1:\(chars)")
                    chars = chars.prefix(i).map{$0}
                    print("after1:\(chars)")
                    break
                } else if i == (min(chars.count, current.count)-1) {
                    print("before2:\(chars)")
                    chars = chars.prefix(min(chars.count, current.count)).map{$0}
                    print("after2:\(chars)")
                }
            }
        }
        return chars.joined()
    }
}

//Solution().longestCommonPrefix(["hello"])
//Solution().longestCommonPrefix(["hello","hi","helo"])
//Solution().longestCommonPrefix(["hello",""])
//Solution().longestCommonPrefix(["hello","nihao"])
//Solution().longestCommonPrefix(["flower","flow","flight"])
Solution().longestCommonPrefix(["aa","a"])


