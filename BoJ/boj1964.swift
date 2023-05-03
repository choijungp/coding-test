import Foundation

let n = Int(readLine()!)!
var result = 5
var tmp = 7
for i in 1..<n {
    result += tmp
    tmp += 3
}
print(result % 45678)
