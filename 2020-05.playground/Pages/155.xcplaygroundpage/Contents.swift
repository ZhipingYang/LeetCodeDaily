//: [Previous](@previous)

import Foundation

class MinStack {
    private class Node {
        var min: Int
        var value: Int
        var next: Node?
        init(value:Int, min:Int, next: Node? = nil) {
            self.min = min
            self.value = value
            self.next = next
        }
    }
    private var header: Node?

    func push(_ x: Int) {
        if let header = header {
            self.header = Node(value: x, min: min(x,header.min), next: header)
        } else {
            self.header = Node(value: x, min: x)
        }
    }

    func pop() {
        self.header = self.header?.next
    }

    func top() -> Int {
        return header?.value ?? -1
    }

    func getMin() -> Int {
        return header?.min ?? -1
    }
}
