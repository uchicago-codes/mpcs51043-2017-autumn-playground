import Foundation

///
func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
  var sortedArray = array
  for i in 0..<sortedArray.count - 1 {
    print("Pass \(i):")
    for j in 1..<sortedArray.count {
      if sortedArray[j-1] > sortedArray[j] {
        sortedArray.swapAt(j-1, j)
        print(sortedArray)
      }
    }
  }
  return sortedArray
}

let array = [100000,0]
let sortedArray = bubbleSort(array)








//// The arrays are different
//array.withUnsafeBufferPointer { (point) in
//  print(point)
//}
//sortedArray.withUnsafeBufferPointer { (point) in
//  print(point)
//}

