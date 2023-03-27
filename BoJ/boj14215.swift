import Foundation

let abc = readLine()!.split(separator: " ").map({ Int($0)! })
let a = abc[0], b = abc[1], c = abc[2]
let maxLen = max(a, b, c)

var sum = a + b + c - maxLen
if maxLen < sum {
    print(sum + maxLen)
}
else {
    print(sum + sum - 1)
}
