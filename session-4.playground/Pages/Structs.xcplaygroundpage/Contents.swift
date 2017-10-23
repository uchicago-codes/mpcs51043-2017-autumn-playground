//: Playground - noun: a place where people can play

import Foundation


/// An representation of a user
/// in our application
struct User {

  // Store properties
  var username: String
  var email: String
  var name: String
}


// Create an instance of user
var user = User(username: "pumpkinlover",
                email: "jack_skelington@gmail.com",
                name: "Pumpkin Jack")


// Access the user data through properties
print("Username: \(user.username)")
print("Email: \(user.name)")

let me = User(username: "ab", email: "ab@ab", name: "Andew")

// Check the type of our struct instance
print("The type is...\(type(of:me))")

/// Print a greeting to stdoutCheck
/// - Parameter user: A `User` object
func greetUser(user: User) {
  print("🤚 \(user.name)")
}
greetUser(user: user)


//: ## Structs are Value Types ##
//: ---------------------------------------------

// Value type example
struct Num {
  var data: Int
}

var a = Num(data: 1)
a.data

var b:Num = a         // a is copied to b
b.data

a.data = 42                     // Changes a, not b
print("\(a.data), \(b.data)")  // prints "42, -1"
b.data


// Create a new user instance
var user2 = User(username: "sally1031",
                email: "sally_ragdoll@gmail.com",
                name: "Sally Ragdoll")

greetUser(user: user2)

// Create a new user by assigning value of user2
var user3 = user2
greetUser(user: user3)

print("Sally and Jack get married 💀")
user2.name = "Sally Skelington"

greetUser(user: user2)
greetUser(user: user3)



//: ## Computed Properties ##
//: ---------------------------------------------


struct Rectange {
  // Stored property
  var length: Int
  var width: Int
  
  // Computed property
  var area: Double {
    // Getter
    get {
      return Double(length * width)
    }
    // Setter
    set(anything) {
      length = Int(sqrt(anything))
      width = Int(sqrt(anything))
    }
  }
}

var square = Rectange(length: 5,
                      width: 5)
print(square.area)
print(square.length)
print("Area: \(square.area)")

square.area = 100
print(square)
print(square.area)


//: ## Initialization ##
//: ---------------------------------------------

struct Dog {
  var name: String
  var legs: Int = 4
  var breed: String?
  static let favoriteFood: String = "Bone"
  
  init() {
    legs = 4
    name = "Snoopy"
  }
  
  init(name4: String) {
    name = name4
  }
}

let d = Dog()
print(d)



