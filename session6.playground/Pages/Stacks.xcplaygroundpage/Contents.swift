//: Playground - noun: a place where people can play

import Foundation

/// Stack implemented with built in `Array` type
public struct Stack<T> {
  
  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var size: Int {
    return array.count
  }
  
  public mutating func push(_ element: T) {
    array.append(element)
  }
  
  public mutating func pop() -> T? {
    return array.popLast()
  }
  
  func peek() -> T? {
    return array.last
  }
  
}

///
extension Stack: CustomStringConvertible {
  public var description: String {
    var output = "Stack of size \(self.size) of type \(type(of:array.first))\n"
    for item in array {
      output += "\t🌐\(item)\n"
    }
    return output
  }
}



/// Browsing history example
var history = Stack<String>()
history.push("http://apple.com")
history.peek()
history.push("http://google.com")
history.pop()
history.push("http://uchicago.edu")

print(history)



