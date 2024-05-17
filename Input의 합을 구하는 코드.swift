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

let N = Int(readLine()!)!
var ans = 0
if N > 0 {
    for i in 0...(N-1) {
        let X = Int(readLine()!)!
        ans += X
    }
}

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)

print(ans)
