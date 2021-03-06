//: [Previous](@previous)

var letters = Set<Character>()

print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."

letters.insert("a")
// letters now contains 1 value of type Character
letters = []
// letters is now an empty set, but is still of type Set<Character>

// Create a set with an array literal
//var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

// Sets need to be explicitly declared since compiler
// doesn't know if its not an array
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

// ## Operating on Sets
print("I have \(favoriteGenres.count) favorite music genres.")
// Prints "I have 3 favorite music genres."

if favoriteGenres.isEmpty {
  print("As far as music goes, I'm not picky.")
} else {
  print("I have particular music preferences.")
}
// Prints "I have particular music preferences."

favoriteGenres.insert("Jazz")
// favoriteGenres now contains 4 items

if let removedGenre = favoriteGenres.remove("Rock") {
  print("\(removedGenre)? I'm over it.")
} else {
  print("I never much cared for that.")
}
// Prints "Rock? I'm over it."


if favoriteGenres.contains("Funk") {
  print("I get up on the good foot.")
} else {
  print("It's too funky in here.")
}
// Prints "It's too funky in here."


//: # Iterating over Sets
for genre in favoriteGenres {
  print("\(genre)")
}
// Jazz
// Hip hop
// Classical

for genre in favoriteGenres.sorted() {
  print("\(genre)")
}
// Classical
// Hip hop
// Jazz


//:
//: # Set Operations
//:
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

//:
//: # Set Membership and Equality
//:


let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals == farmAnimals                // false
houseAnimals.isSubset(of: farmAnimals)     // true
farmAnimals.isSuperset(of: houseAnimals)   // true
farmAnimals.isDisjoint(with: cityAnimals)  // true


//: [Next](@next)
