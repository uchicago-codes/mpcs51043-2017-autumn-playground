import Foundation

/// A Node that holds a reference to another Node
/// and a generic item
public class Node<T> {
  var item: T
  var next: Node?
  
  init(item: T) {
    self.item = item
  }
}


// Using our node
/*
let numberNode = Node(item: 100)
let nextNode = Node(item: 101)
numberNode.next = nextNode

print(numberNode.item)
print(numberNode.next!)
*/

//: -----
///
/// Linked List
///

public class LinkedList<T> {

  /// The beginning of the list
  private var head: Node<T>?
  
  /// Return the head node
  public var first: Node<T>? {
    return head
  }
  /// Identify that List contains nodes
  public var isEmpty: Bool {
    return head == nil
  }

  /// Iterate through all the nodes in the list
  /// and count them up
  public var count: Int  {
    if var node = head {
      var c = 1
      while let next = node.next {
        node = next
        c += 1
      }
      return c
    } else {
      return 0
    }
  }
  
  /// Iterate through all nodes and return the
  /// last one
  public var last: Node<T>? {
  if var node = head {
      while let next = node.next {
        node = next
      }
      return node
    } else {
      return nil
    }
  }
  
  /// Add a node at the end of the list
  public func append(item: T) {
    let newNode = Node(item: item)
    if let lastNode = last {
      lastNode.next = newNode
    } else {
      head = newNode
    }
  }
}

///
///
///
extension LinkedList: CustomStringConvertible {
  public var description: String {
    var s = "["
    var node = head
    while node != nil {
      s += "\(node!.item)"
      node = node!.next
      if node != nil { s += ", " }
    }
    return s + "]"
  }
}


let list = LinkedList<String>()
list.isEmpty   // true
list.first     // nil

list.append(item:"Snoopy")
list.append(item:"Charlie Brown")
print(list)






