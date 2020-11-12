//: [Previous](@previous)

import Foundation

class Solution {
    func validMountainArray(_ A: [Int]) -> Bool {
        if A.count <= 0 { return false }
        if A.count == 1 { return true }
        
        var preIndex = 0
        var nexIndex = 1
        var riseEnd = false
        var descendBegin = false
        
        for i in (0..<A.count-1) {
            let pre = A[preIndex]
            let next = A[nexIndex]
            if pre < next {
                if riseEnd {
                    print("1")
                    return false
                }
                descendBegin = false
            } else if pre == next {
                print("2")
                return false
            } else {
                if descendBegin == false, riseEnd == false {
                    descendBegin = true
                    riseEnd = true
                }
                if descendBegin == false || riseEnd == false {
                    print("3")
                    return false
                }
            }
            print("pre:\(A[preIndex]), next:\(A[nexIndex]), riseEnd:\(riseEnd), descenBegin:\(descendBegin)")
            preIndex += 1
            nexIndex += 1
        }
        return true
    }
}

Solution().validMountainArray([2,3,2,1])
Solution().validMountainArray([3,5,5])
Solution().validMountainArray([6,5,3])
Solution().validMountainArray([2,1,3])
Solution().validMountainArray([2,1])
