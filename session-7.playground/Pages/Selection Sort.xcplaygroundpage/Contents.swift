import Foundation

///
func selectionSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }  // 1
  // Orignal array
  var a = array
  print(a)
  print("==========")
  // Iterate through each line; maintain the current passs
  for x in 0 ..< a.count - 1 {
    var lowest = x
    for y in x + 1 ..< a.count {   // 4
      if a[y] < a[lowest] {
        lowest = y
      }
    }
    // Swap out the number next to previous lowest
    if x != lowest {
      a.swapAt(x, lowest)
      print("swap \(a[x]) for \(a[lowest])")
    }
    print(a)
  }
  return a
}

let list = [ 10, -1, 5, 4, 2 ]
selectionSort(list)

