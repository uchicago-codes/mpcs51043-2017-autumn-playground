//: [Previous](@previous)

let myTuple = (1,"b",3)
type(of: myTuple)


var things = (1,2,"Blue","Dog","🤔",["a","b","c"])

things.0
things.1
things.2
things.3
things.4
type(of:things.5)

//:
//: # Changing Values
//:

// You can change the value as long as the
// type is the same as the initial value
things.0 = 4

things

//:
//: # Tuples as Return Values
func firstAndLast(numbers: [Int]) -> (Int,Int) {
  let first = numbers.first!
  let last = numbers.last!
  return (first, last)
}

let numbers = [1,2,3,4,5,6,7,8,9]
let tuple = firstAndLast(numbers: numbers)
tuple.0
tuple.1



let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

/*
//
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

//
print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")
If you name the elements in a tuple, you can use the element names to access the values of those elements:

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"
*/

//: [Next](@next)
