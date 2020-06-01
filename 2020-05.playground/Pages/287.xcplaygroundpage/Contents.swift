//: [Previous](@previous)

import Foundation

//class Solution {
//    func findDuplicate(_ nums: [Int]) -> Int {
//        let set = Set(nums)
//        return (nums.reduce(0){$0+$1}-set.reduce(0, {$0+$1}))/(nums.count-set.count)
//    }
//}

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        typealias Pointer = (fast:Int, slow:Int)
        let inCircleValue = sequence(first: (nums[0],0)) { (nums[nums[$0.0]], nums[$0.1]) }.first { $0.0 == $0.1 }!.0
        let newSeq = sequence(first: (nums[0],inCircleValue)) { (nums[$0.0], nums[$0.1]) }
        return newSeq.first { $0.0 != $0.1 }!.1
//        var fast = 0
//        var slow = 0
//        while(true) {
//            fast = nums[nums[fast]]
//            slow = nums[slow]
//            print("\(fast) \(slow)")
//            if(slow == fast) {
//                print("== \(fast) \(slow)")
//                fast = 0
//                while(nums[slow] != nums[fast]) {
//                    fast = nums[fast]
//                    slow = nums[slow]
//                }
//                return nums[slow]
//            }
//        }
    }
}

//Solution().findDuplicate([1,3,4,2,2])   // 1->3->[2]->4->[2]->4
//Solution().findDuplicate([3,1,4,2,3])   // [3]->2->4->[3]->4
Solution().findDuplicate([3,1,3,4,2])
