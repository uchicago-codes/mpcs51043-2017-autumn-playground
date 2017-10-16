//: # Dictionaries #

//:
//: ## Declaring Dictioanries ##
//:


// Dictionary type declaration (rarely used)
//var hero = Dictionary<String, String>()A

// Shorthand syntax (use this) to declare empty dictioanry
var hero = [String: String]()
hero["firstName"] = "Bruce"
hero["lastName"] = "Wayne"
hero["nickname"] = "Batman"
hero["car"] = "2"

Int(hero["car"]!)


// These are not allowed because they don't conform to the
// defined type
// hero["age"] = 40
//hero["enemies"] = ["Joker", "Penguin", "Poison Ivy"]


// Dictionary literal
let airports: [String: String] = ["YYZ": "Toronto Pearson",
                                  "DUB": "Dublin"]

var airports2: [String: String] = ["YYZ": "Toronto Pearson",
                                    "DUB": "Dublin"]
airports2["MDW"] = "Midway"

print(airports2)

//: ## Keys ##
// Keys must be Hashable
// String, Integer, Bool conform to this
var hero2 = [Int: String]()
hero2[1] = "Bruce"
hero2[2] = "Wayne"
hero2[3] = "Batman"

// Using a Bool as a key is limited
var hero3 = [Bool: String]()
hero3[true] = "Bruce"
hero3[false] = "Wayne"

//: ## Working with Dicionaries ##
var airportCodes: [String: String] = ["YYZ": "Toronto Pearson",
                                      "DUB": "Dublin",
                                      "MDW":"Midway"]
airportCodes.count
airportCodes.isEmpty


//: ## Update the values for a key ##
airportCodes["MDW"] = "O'Hare"
airportCodes.updateValue("Midway", forKey: "MDW")

print(airportCodes)

//: ## Accessing and Modifying Values
print(airportCodes["MDW"]!)

if let lax = airportCodes["MDW"] {
  print("Go to \(lax)")
}

if let airportName = airports["MDW"] {
  print("The name of the airport is \(airportName).")
} else {
  print("That airport is not in the airports dictionary.")
}

// Iterate through a dictionary
for ac in airportCodes {
  print(">>> \(ac)")
}

for (airportCode, airportName) in airportCodes {
  print("\(airportCode) ===> \(airportName)")
}

// Access keys and values directly
//print(airportCodes.keys)
//print(airportCodes.values)

