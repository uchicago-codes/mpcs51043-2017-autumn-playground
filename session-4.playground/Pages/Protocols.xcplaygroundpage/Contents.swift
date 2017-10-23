//: [Previous](@previous)

import Foundation
/*
 
protocol SomeProtocol {
  func doSomethingAwesome()
}

protocol AnotherProtocol {
  func doSomethingTerrible(task: String)
}

struct MyStruct {
  // properties
  // my instandce methods
  //
}


extension MyStruct: SomeProtocol, AnotherProtocol {
  func doSomethingTerrible(task: String) {
    //
  }
  // MARK: -- Protocol Functions
  func doSomethingAwesome() {
    // We can do anything awesome here
  }
  
}
*/


struct Date {
  let year: Int
  let month: Int
  let day: Int
}

extension Date: Equatable, Comparable {
  
  // Compare for value equality
  static func == (lhs: Date, rhs: Date) -> Bool {
    return lhs.year == rhs.year 
  }
  
  // Compare
  static func < (lhs: Date, rhs: Date) -> Bool {

    if lhs.year != rhs.year {
      return lhs.year < rhs.year
    } else if lhs.month != rhs.month {
      return lhs.month < rhs.month
    } else {
      return lhs.day < rhs.day
    }
  }
  
}

let spaceOddity = Date(year: 1970,
                       month: 7,
                       day: 11)
let moonLanding = Date(year: 1969,
                       month: 7,
                       day: 20)

spaceOddity == moonLanding

//: [Next](@next)
