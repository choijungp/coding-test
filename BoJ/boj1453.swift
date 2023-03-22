import Foundation

var arr = Array(repeating: 0, count: 101)
let n = Int(readLine()!)!
let customers = readLine()!.split(separator: " ").map({ Int($0)! })
var cnt = 0
for customer in customers {
    if arr[customer] == 1 {
        cnt += 1
    }
    else {
        arr[customer] = 1
    }
}
print(cnt)
