import Foundation

/*
 A: [5, 7, 1, 4, 2]

 A: [7, 1, 4, 2]
 B: [5]

 A: [1, 4, 2]
 B: [5, 7]

 A: [4, 2]
 B: [1, 5, 7]

 A: [2]
 B: [1, 4, 5, 7]

 A: []
 B: [1, 2, 4, 5, 7]
*/

func insertionSort(_ array: [Int]) -> [Int] {
  var a = array                 // Original array
  print("Original: \(array)")

  for x in 1..<a.count {        // Iterate from current postion, x
    var y = x
    //print("Current Pass: \(a[x])")
    
    // If the current value is less than the previous we need to swap it
    while y > 0 && a[y] < a[y - 1] {
      print("Swap \(a[y-1]) for \(a[y])")
      a.swapAt(y - 1, y)
      y -= 1
      print(a)
    }
  }
  return a
}


let array = [9,8,4,3,2]
let sortedArray = insertionSort(array)

