import Foundation

//:
//: Sample JSON String
//:

// JSON is just a string in a specific format
let jsonString = """
{
"name": "Snoopy",
"legs": 4,
"breed": "beagle"
}
"""
print(jsonString)

/// Custom `Dog` type
struct Dog: Codable {
  let name: String
  let legs: Int
  let breed: String
  //let color: String?
}

//:
//: Covert JSON to `Dog`
//:
let jsonData = jsonString.data(using: .utf8)!
let decoder = JSONDecoder()
let dog = try! decoder.decode(Dog.self, from: jsonData)

//
//do {
//  let dog = try decoder.decode(Dog.self, from: jsonData)
//  // Data has been converted to `Dog` type
//  print(dog)        // Dog(name: "Snoopy", legs: 4, breed: "beagle")
//  print(dog.name)   // Snoopy
//  print(dog.breed)  // beagle
//
//} catch {
//  print(error)
//}
//
//// Data has been converted to `Dog` type
//print(dog)        // Dog(name: "Snoopy", legs: 4, breed: "beagle")
//print(dog.name)   // Snoopy
//print(dog.breed)  // beagle

//:
//: Convert a `Dog` type to JSON
//:
let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

let data = try! encoder.encode(dog)
print(String(data: data, encoding: .utf8)!)

