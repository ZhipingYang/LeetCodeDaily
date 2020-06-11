//: [Previous](@previous)

import Foundation

class Solution {
    func dailyTemperatures1(_ T: [Int]) -> [Int] {
        var result = Array.init(repeating: 0, count: T.count)
        for i in 0..<T.count {
            for j in (i+1)..<T.count {
                if T[i] < T[j] {
                    result[i] = j-i
                    break
                }
            }
        }
        return result
    }

    func dailyTemperatures2(_ T: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: T.count)
        var indexStack = [Int]()
        var hightIndex: Int? = nil
        var maxValue = 0
        for i in 0..<T.count {
            if T[i] > maxValue { maxValue = T[i]}
            if indexStack.count<=0 {
                indexStack.append(i)
                result[i] = 0
            } else if T[i] < T[indexStack.last!] {
                while let last = indexStack.last, T[last] > T  {
                    
                }
                indexStack.removeAll()
                indexStack.append(i)
                hightIndex =  i
                result[i] = 1
            } else {
                indexStack.append(i)
                result[i] = i - hightIndex!
            }
            
            print(indexStack)
            print(hightIndex)
            print(result)
            print("---------")
        }
        return result
    }
}


//Solution().dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73])// == [1, 1, 4, 2, 1, 1, 0, 0]
//Solution().dailyTemperatures1([1, 2, 3, 3, 2, 1, 2])    // [1, 1, 0, 0, 0, 1, 0]
Solution().dailyTemperatures2([2, 1, 2, 3, 3, 2, 1])    // [0, 1, 0, 0, 0, 1, 1]

