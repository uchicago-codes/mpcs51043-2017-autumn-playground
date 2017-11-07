//:
//: Queue
//:

import Foundation

public struct Queue<T> {
  fileprivate var array = [T]()
  
  public var isReallyEmpty: Bool {
    get {
      return array.isEmpty
    }
  }
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var size: Int {
    return array.count
  }
  
  public mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  public var front: T? {
    return array.first
  }

  public var rear: T? {
    return array.last
  }
  
}

///
///
///
extension Queue: CustomStringConvertible {
  public var description: String {
    var output = "Queue of size \(self.size) of type \(type(of:array.first))\n"
    for item in array {
      output += "\t●\(item)\n"
    }
    return output
  }
}

///
/// Queue in practice
///
var q = Queue<String>()
q.enqueue("Charlie")
q.enqueue("Sally")
q.enqueue("Lucy")
print(q)

q.dequeue()
print(q)

q.dequeue()
print(q)

q.enqueue("Linus")
print(q)
