import Foundation

/// Find a number in a list
///  - parameter number: The number to look for
///  - paramter list: An array of `Int`s
///  - returns: An `Int` representing the index
func find(number: Int, list: Array<Int>) -> Int? {
  for index in 0...list.count {
    if list[index] == number {
      return index
    }
  }
  return nil
}

let array = [0,1,2,3,4,5,6,7,8,9]
if let index = find(number: 9, list: array) {
  print("Found number at index: \(index)")
}


//: # MARK: - O(n^2) #
//: -------------------------------------------------------------------

let n = 5
for i  in stride(from: 0, to: n, by: 1) {
  for j in stride(from: 1, to: n, by: 1) {
    print(i,j)
  }
}
