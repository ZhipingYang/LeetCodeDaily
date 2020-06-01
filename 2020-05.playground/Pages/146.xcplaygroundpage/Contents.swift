//: [Previous](@previous)

import Foundation

class LRUCache {
    var hash = [Int:Int?]()
    var list = [Int]()
    var capacity: Int
    
    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        guard let index = list.firstIndex(of: key) else {
            print("null")
            return -1
        }
        let value: Int = hash[key]!!
        list.remove(at: index)
        list.insert(key, at: 0)
        print("hash:\(hash) list:\(list)")
        return value
    }
    
    func put(_ key: Int, _ value: Int) {
        if list.count >= capacity {
            if list.contains(key) {
                list.remove(at: list.firstIndex(of: key)!)
            } else {
                list.remove(at: capacity-1)
            }
            hash.removeValue(forKey: key)
        }
        list.insert(key, at: 0)
        hash[key] = value
        print("hash:\(hash) list:\(list)")
    }
}


let cache = LRUCache(2)
cache.put(2, 6)
cache.put(1, 5)
cache.put(1, 2)
cache.get(1)
cache.get(2)

//let cache = LRUCache(2)
//cache.put(1, 1)
//cache.put(2, 2)
//cache.get(1)       // 返回  1
//cache.put(3, 3)    // 该操作会使得密钥 2 作废
//cache.get(2)       // 返回 -1 (未找到)
//cache.put(4, 4)    // 该操作会使得密钥 1 作废
//cache.get(1)       // 返回 -1 (未找到)
//cache.get(3)       // 返回  3
//cache.get(4)       // 返回  4

//let cache = LRUCache(2)
//cache.get(2)
//cache.put(1, 1)
//cache.put(2, 2)
//cache.get(1)
//cache.put(3, 3)
//cache.put(4, 4)
//cache.get(1)
//cache.get(3)
//cache.get(4)
