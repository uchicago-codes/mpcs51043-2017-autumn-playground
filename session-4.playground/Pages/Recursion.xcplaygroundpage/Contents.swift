//: # Recursion #
//: ----------------------------------------------------------------------

import Foundation

//:
//: ## Counting with Recursion ##
//: ----------------------------------------------------------------------

/// Print out number up to `N`
/// - parameter N: An integer to count up to
func printFirstNumbers(_ N: Int) {
  if N > 1 {
    printFirstNumbers(N - 1)
  }
  print(N)
}
printFirstNumbers(3)

/// Countdown from an Int
/// - parameter from: `Int`
func countdown(from: Int) {
  if from < 0 {
    print("🚀 Blastoff")
  } else {
    print("\(from)")
    // Call countdown with decremented parameter
    countdown(from: from - 1)
  }
}
countdown(from:5)

//:
//: ## Factorial ##
//: ----------------------------------------------------------------------

/// Caculate the factorial of `N`
func factorial(_ N: Int) -> Int {
  if N == 1 {
    return 1
  } else {
    return N * factorial(N - 1)
  }
}
factorial(4)

//:
//: ## Draw a Triangle ##
//: ----------------------------------------------------------------------
func drawTriangle(height: Int, t: Int = 0) {
  guard height != 0 else { return }

  let leftSpace = height + 1
  let stars = t * 2 + 1
  
  // Print to screen (spaces as "-")
  for _ in 0..<leftSpace {
    print("-", terminator: "")
  }
  for _ in 0..<stars {
    print("*", terminator: "")
  }
  print("")
  
  // Recursive call to draw next row
  return drawTriangle(height: height - 1, t: t + 1)
}

drawTriangle(height: 4)


func pow(_ x: Int, _ y: Int) -> Int {
  if y == 0 {
    return 1
  } else if y == 1 {
    return x
  } else {
    // compute x^(y/2)
    let xy2 = pow(x, y / 2)
    // if y is even
    if y % 2 == 0 {
      // x^y is x^(y/2) squared
      return xy2 * xy2
    } else {
      // x^y is x^(y/2) squared times x
      return xy2 * xy2 * x
    }
  }
}

pow(2,3)

