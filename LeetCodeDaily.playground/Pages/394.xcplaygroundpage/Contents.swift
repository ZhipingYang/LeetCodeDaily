//: [Previous](@previous)

import Foundation

/*
 s = "3[a]2[bc]", 返回 "aaabcbc".
 s = "3[a2[c]]", 返回 "accaccacc".
 s = "2[abc]3[cd]ef", 返回 "abcabccdcdcdef".
 */


class Solution {
    func decodeString(_ s: String) -> String {
//        var stack = [(String, Int)]()
//        var repeatNum = 0
//        var result = ""
//        for c in s.map({String($0)}) {
//            if let n = Int(c) {
//                repeatNum = repeatNum * 10 + n
//            } else if c == "[" {
//                stack.append((result,repeatNum))
//                result = ""
//                repeatNum = 0
//            } else if c == "]" {
//                if let top = stack.popLast() {
//                    let str = Array(repeating: result, count: top.1).reduce("") { $0 + $1 }
//                    result = top.0 + str
//                }
//            } else {
//                result += c
//            }
//            print(stack)
//        }
//        return result

        
//        var stack = [(String, Int)]()
//        return s.reduce(("",0)) { (info, c) -> (String, Int) in
//            if let n = Int(String(c)) {
//                return (info.0, info.1 * 10 + n)
//            } else if String(c) == "[" {
//                stack.append(info)
//                return ("",0)
//            } else if String(c) == "]", let top = stack.popLast() {
//                let str = Array(repeating: info.0, count: top.1).reduce("") { $0 + $1 }
//                return (top.0 + str, info.1)
//            }
//            return (info.0 + String(c), info.1)
//        }.0
        
        
//        typealias StackInfo = (s:String, n:Int)
//        typealias Info = ([StackInfo], StackInfo)
//        let initInfo: Info = ([StackInfo](),("",0))
//        return s.reduce(into: initInfo) { (<#inout Result#>, <#Character#>) in
//            <#code#>
//        }

        
        
    }
}

Solution().decodeString("3[a]2[bc]")// == "aaabcbc"
Solution().decodeString("3[a2[c]]")// == "accaccacc"
Solution().decodeString("2[abc]3[cd]ef")// == "abcabccdcdcdef"
