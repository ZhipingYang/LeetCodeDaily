//: [Previous](@previous)

import Foundation

class Solution {
    func patternMatching(_ pattern: String, _ value: String) -> Bool {
        if (pattern.isEmpty && value.isEmpty) { return true }
        if (pattern.isEmpty) { return false }

        pattern.map { String($0) }
        return false
    }
}

Solution().patternMatching("abba", "dogcatcatdog")
