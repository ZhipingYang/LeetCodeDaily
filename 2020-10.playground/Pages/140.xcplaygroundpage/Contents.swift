//: [Previous](@previous)

import Foundation

class Solution1 {
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        let keys = Set(wordDict)
        
        var result = [[String]]()
        var _result = [String]()
        
        func word_break(_ ss: String) {
            if ss.count == 0 {
                result.append(_result)
                _result = [String]()
                return
            } else if keys.first(where: { ss.hasPrefix($0) }) == nil {
                _result = [String]()
                return
            }

            keys.forEach {
                if ss.hasPrefix($0) {
                    _result.append($0)
                    var newS = ss
                    newS.removeFirst($0.count)
                    word_break(newS)
                }
            }
            print("result: \(_result)")
        }
        word_break(s)
        print(result)
        return _result
    }
}

class Solution2 {
    var cache: [String: [String]] = [:]
    var word_set: Set<String> = []
    
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        word_set = Set<String>(wordDict)
        return word_break(s)
    }
    func word_break(_ s: String) -> [String] {
        if s.count == 0 { return [""] }
        if let res = cache[s] { return res }
        var res = [String]()
        for i in 0..<s.count {
            let end = s.index(s.startIndex, offsetBy: i)
            let subStr = String(s[...end])
            if word_set.contains(subStr) {
                let next = s.index(end, offsetBy: 1)
                let subArr = word_break(String(s[next...]))
                let appendingArr = subArr.map { res -> String in
                    if res == "" { return "\(subStr)" }
                    return "\(subStr) \(res)"
                }
                res += appendingArr
            }
        }
        cache[s] = res
        return res
    }
}


Solution1().wordBreak("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"])
/*
 [
   "pine apple pen apple",
   "pineapple pen apple",
   "pine applepen apple"
 ]
*/

//Solution().wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"])
