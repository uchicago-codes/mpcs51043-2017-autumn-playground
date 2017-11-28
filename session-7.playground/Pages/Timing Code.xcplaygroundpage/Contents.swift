import CoreFoundation

struct ElapsedTimer {
  
  let startTime:CFAbsoluteTime
  
  var endTime:CFAbsoluteTime?
  
  var duration:CFAbsoluteTime? {
    if let endTime = endTime {
      return endTime - startTime
    } else {
      return nil
    }
  }

  init() {
    startTime = CFAbsoluteTimeGetCurrent()
  }
  
  mutating func stop() -> CFAbsoluteTime {
    endTime = CFAbsoluteTimeGetCurrent()
    return duration!
  }
}

///:
///: ElapsedTimer in action
///:

// Time some code
var timer = ElapsedTimer()
var sum = 0
for _ in 0...100 {
  sum += 1
}
print("Elapsed time: \(timer.stop())")

assert(1==2)

