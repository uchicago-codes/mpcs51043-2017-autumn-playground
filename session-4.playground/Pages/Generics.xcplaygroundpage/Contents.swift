//: [Previous](@previous)

import Foundation



let numbers = [2.8, 3.2, 3.5, 3.8, 3.5]
let people = ["Pumpkin Jack", "Sally Ragdoll", "Great Pumpkin"]

//: Array of Numbers
func printArrayOfDoubles(_ array: [Double]) {
  for element in array {
    print(element)
  }
}
printArrayOfDoubles(numbers)

//: Array of strings
func printArrayOfStrings(_ array: [String]) {
  for element in array {
    print(element)
  }
}
printArrayOfStrings(people)


//
/// Generic Function
func printGenericArray<T>(array: [T]) {
  for element in array {
    print("Generic: \(element)")
  }
}
printGenericArray(array:numbers)
printGenericArray(array:people)




//: [Next](@next)
