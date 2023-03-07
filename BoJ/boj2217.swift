import Foundation

let t = Int(readLine()!)!
var ropes: [Int] = []
for _ in 0..<t {
    ropes.append(Int(readLine()!)!)
}
ropes.sort(by: >)
var result = 0
for i in 0..<ropes.count {
    result = max(result, ropes[i] * (i + 1))
}
print(result)
