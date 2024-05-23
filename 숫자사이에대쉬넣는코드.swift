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

let X = readLine()!

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)

var result = ""

for i in X {
    result += String(i) + "-"
}

result.removeLast()

print(result)

// Mosu의 코드
// var res: String = ""
// for i in 0..<X.count {
//     if i != 0 {
//         res += "-\(X[X.index(res.startIndex, offsetBy: i)])"
//     } else {
//         res += "\(X[X.index(res.startIndex, offsetBy: i)])"
//     }
// }
// print(res)
