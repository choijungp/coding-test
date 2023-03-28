import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nk[0], k = nk[1]
var temperatures = readLine()!.split(separator: " ").map({ Int($0)! })
var maxSum = -1000000

for i in 0...(n-k) {
    if temperatures[i..<(i+k)].reduce(0, +) > maxSum {
        maxSum = temperatures[i..<(i+k)].reduce(0, +)
    }
}
print(maxSum)
