import Foundation

//:
//: Sample JSON String
//:

let jsonString = """
{"name": "Snoopy","legs": 4,"breed": "beagle"}
"""

enum DogBreed: String, Codable {
  case beagle
  case bostonTerrier
  case poodle
}

/// Custom `Dog` type
struct Dog: Codable {
  let name: String
  let legs: Int
  let breed: DogBreed
}

//:
//: Covert JSON to `Dog`
//:
let jsonData = jsonString.data(using: .utf8)!
let decoder = JSONDecoder()
let dog = try! decoder.decode(Dog.self, from: jsonData)


// Data has been converted to `Dog` type
print(dog)
// Dog(name: "Snoopy", legs: 4, breed: "beagle")

//:
//: Convert a `Dog` type to JSON
//:
let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

let data = try! encoder.encode(dog)
print(String(data: data, encoding: .utf8)!)


//:
//: JSON Arrays
//:

let dogs = """
[
{"name": "Snoopy","legs": 4,"breed": "beagle"},
{"name": "Pebbles","legs": 4,"breed": "bostonTerrier"}
]
"""

struct DogPound: Codable {
  let dogs: [Dog]
}

let dataArray = dogs.data(using: .utf8)!
let dataDecoder = JSONDecoder()
let dogPound = try! dataDecoder.decode([Dog].self, from: dataArray)

for dog in dogPound {
  print("Dog:\n\t\(dog)")
}



