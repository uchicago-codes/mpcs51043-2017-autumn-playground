import Foundation


///
///
///
struct City {
  var population : Int
  
  mutating func changePopulation(newpopulation : Int) {
    self.population = newpopulation
  }
}

var chicago = City(population : 3500000)
chicago.changePopulation(newpopulation : 3500001)


///
///
///

public struct Dog {
  public var name: String?
  var sound: String?

//  mutating func change(name: String) {
//    self.name = name
//    // 1st create a new instance of Dog
//    // 2nd copy all the values from old to new Dog
//    // 3rd update name to new name
//    // 4th set self to new location in memory
//  }
}





//var dog = Dog()
//dog.name = "Snoopy"
//dog.name = "Fido"
//dog.change(name: "Lassie")

