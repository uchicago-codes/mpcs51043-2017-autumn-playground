//: Playgr ound - noun: a place where people can play

import Foundation

///
func sumOf(n: Int) -> (Int, Double) {
  let start = Date()    // 1 time
  var sum = 0           // 1 time
  for i in 1...n+1 {    // n times
    sum += i            // 1 time * n times
  }
  let time = Date().timeIntervalSince(start) // 1 time
  return (sum,time)                          // 1 time
}


func sumOf_alternative(n: Int) -> (Int, Double) {
  let start = Date()            // 1 time
  let sum = n*(n+1)/2           // 1 time
  let time = Date().timeIntervalSince(start) // 1 time
  return (sum,time)                          // 1 time
}
//
//for i in stride(from: 0, to: 100000, by: 10000) {
//  let (_, time) = sumOf(n: i)
//  print(String(format:"%7d: ⏱:%.5f 🐢", i, time))
//
//  let (_, time2) = sumOf_alternative(n: i)
//  print(String(format:"%7d: ⏱:%.5f 🐰\n", i, time2))
//}

