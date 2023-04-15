import Foundation

var start = 3
let n = Int(readLine()!)!
for _ in 1..<n {
    start = 2 * start - 1
}
print(Int(pow(Double(start), 2.0)))
