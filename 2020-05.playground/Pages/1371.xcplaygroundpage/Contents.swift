//: [Previous](@previous)

import Foundation


//class Solution {
//    func findTheLongestSubstring(_ s: String) -> Int {
//        let allC = s.map { String($0) }
//        let cases = Set(arrayLiteral: "a","e","i","o","u")
//        let count = allC.count
//        var max = 0
//        for i in allC.enumerated() {
//            var dic = [String:String]()
//            print("=====\(allC[i.offset..<count].joined())======")
//            for j in allC[i.offset..<count].enumerated() {
//                let str = j.element
////                print(str)
//                if cases.contains(str) {
//                    dic[str] == nil ? (dic[str] = str) : (dic[str] = nil)
////                    print("case:\(str)")
////                    print(dic)
//                }
//                print(dic)
//                let currentLength = j.offset + 1
//                if dic.count == 0 {
//                    if max < currentLength {
//                        max = currentLength
//                    }
//                    print("max:\(max)")
//                    print("i.offset: \(i.offset) j.offset:\(j.offset)")
//                }
//            }
//        }
//        return max
//    }
//}


//class Solution {
//    func findTheLongestSubstring(_ s: String) -> Int {
//        let allC = s.map { String($0) }
//        let cases = ["a":0,"e":1,"i":2,"o":3,"u":4]
//        var max = 0
//        for i in 0..<s.count {
//            var state = 0x000000
//            for j in i..<s.count {
//                let str = allC[j]
//                if cases.keys.contains(str) { state ^= 1<<(cases[str]!) }
//                let currentLength = j - i + 1
//                if state == 0, max < currentLength {
//                    max = currentLength
//                }
//            }
//        }
//        return max
//    }
//}


class Solution {
    func findTheLongestSubstring(_ s: String) -> Int {
        let allC = s.map { String($0) }
        let cases = ["a":0,"e":1,"i":2,"o":3,"u":4]
        var dp = [0:-1]
        var result = 0, state = 0
        for i in 0..<s.count {
            let str = allC[i]
            if cases.keys.contains(str) { state ^= (1<<(cases[str]!)) }
            if let value = dp[state] {
                result = max(result, i-value)
            } else {
                dp[state] = i
            }
        }
        return result
    }
}

let num1 = Solution().findTheLongestSubstring("eleetminicoworoep")
let num2 = Solution().findTheLongestSubstring("leetcodeisgreat")
let num3 = Solution().findTheLongestSubstring("bcbcbc")

