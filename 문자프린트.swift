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

let inputs = (readLine()!).split(separator: " ").map(String.init)
let chr1 = inputs[0]
let chr2 = inputs[1]
let chr3 = inputs[2]

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)

let line1 = "\(chr1)\(chr1)\(chr1)\(chr1)\(chr1)"
let line2 = "\(chr1)\(chr2)\(chr2)\(chr2)\(chr1)"
let line3 = "\(chr1)\(chr2)\(chr3)\(chr2)\(chr1)"
let line4 = "\(chr1)\(chr2)\(chr2)\(chr2)\(chr1)"
let line5 = "\(chr1)\(chr1)\(chr1)\(chr1)\(chr1)"

print(line1)
print(line2)
print(line3)
print(line4)
print(line5)

// mosu's code

var res = ""

for i in 0..<5 {
    for j in 0..<5 {
        if i==2 && j==2 {
            res+=chr3
        } else if i>=1 && i<=3 && j>=1 && j<=3 {
            res+=chr2
        } else {
            res+=chr1
        }
    }
    print(res)
    res=""
}
