import Foundation

let n = Int(readLine()!)!
var plugs = 0
for _ in 0..<n {
    plugs += Int(readLine()!)!
}
print(plugs - (n - 1))
