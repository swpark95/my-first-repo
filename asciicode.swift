import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

let charCount = Int(readLine()!)!
var str: String = ""
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let charCode = Int(i)!
    var asciiCode = String(UnicodeScalar(charCode)!)
    str += asciiCode
}

// for i in charCode {
//     var asciiCode = Int(UnicodeScalar(charCode).value)
//     print(asciiCode)
// }

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)
print(str)
