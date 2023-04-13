import Foundation

let n = Int(readLine()!)!
var result = ""

for _ in 0..<(n/4) {
    result.append("long ")
}
result.append("int")
print(result)
