//: [Previous](@previous)

import Foundation

/// Custom Dog struct
struct Dog {
  var name: String
  var legs: Int
  var breed: String?
  static var favoriteFood: String = "Bone"
  
}
//
extension Dog: CustomStringConvertible {

  var description: String {
    return "🐶 \(self.name), it has \(self.legs), and is a \(self.breed!)."
  }

}

//
// Create an instance of our Dog type
//
let pebbles = Dog(name: "Pebbles",
                  legs: 4,
                  breed: "Boston Terrier")

// print(_:) uses the CustomStringConvertible
// protocol to access the `.description` property
print(pebbles)


//Dog(name: "Pebbles", legs: 4, breed: Optional("Boston Terrier"))
//The dog's name is Pebbles, it has 4, and is a Optional("Boston Terrier").


//: [Next](@next)


