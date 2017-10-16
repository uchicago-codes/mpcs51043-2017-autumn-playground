import Foundation

// Read data from this file
let path = "./data.txt"

do {
    let data = try String(contentsOfFile: path,
                          encoding: String.Encoding.utf8)
    // Data is just a string
    print(data)

    // Split the string into components by a newline character "\n"
    let lines = data.components(separatedBy: CharacterSet.newlines
    for line in lines {
      print("> Line: \(line)")
   }
  } catch {
    print("Error:\(error)")
  }


//
// Write out a file
//

let outputPath = "./output.txt"

// Write this text.
let text = """
This is some multi-line
text that will be written to
output.txt file.
"""

// Write the text to the path.
do {
  try text.write(toFile: outputPath,
    atomically: true,
    encoding: String.Encoding.ascii)
  } catch {
      print("Error:\(error)")
}
