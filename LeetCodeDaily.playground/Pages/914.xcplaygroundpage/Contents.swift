import Foundation

class Solution {
    func gcd(_ a: Int, _ b: Int) -> Int {
        return b == 0 ? a : gcd(b, a % b);
    }
    func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        let numbers = deck.reduce(into: [Int:Int]()) { $0[$1] = ($0[$1] ?? 0) + 1 }.map { $0.value }
        print(numbers)
        var x: Int = 0
        for n in numbers {
            x = gcd(x, n)
            print("x = \(x)")
            if x==1 { return false }
        }
        return x>=2
    }
}

Solution().hasGroupsSizeX([1,1,1,1,2,2,3,3])

Solution().gcd(20, 0)
