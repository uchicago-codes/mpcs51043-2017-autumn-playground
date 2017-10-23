//: [Previous](@previous)

import Foundation

struct Person {
  var firstName: String
  var lastName: String
  var uuid: String
  
  // MARK: - Instance Methods operate on an instance
  func greetPerson() {
    print("Hi \(self.firstName) \(self.lastName)!")
  }
  
  // MARK: - Type Methods operate on the type
  static func companyId() {
    print("Swift.co")
  }
  
}


extension Person: Equatable {
  
  // Compare for value equality
  static func == (lhs: Person, rhs: Person) -> Bool {
    return lhs.uuid == rhs.uuid
  }
  
}



var homer = Person(firstName: "Homer",
                   lastName: "Simpson",
                   uuid: "123abc")

homer.greetPerson() // Hi Homer Simpson!


Person.companyId()  // Swift.co


var marge = Person(firstName: "Marge",
                   lastName: "Simpson",
                   uuid: "124adx")

var clone = Person(firstName: "Homer",
                   lastName: "Simpson",
                   uuid: "12dsfs")

//
homer == marge
homer == clone



//: [Next](@next)
