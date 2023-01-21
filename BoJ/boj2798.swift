import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]

let cards = readLine()!.split(separator: " ").map({ Int($0)! })
var max = 0
for i in 0..<n {
    for j in i+1..<n {
        for k in j+1..<n {
            var tmpSum = cards[i] + cards[j] + cards[k]
            if tmpSum > max && tmpSum <= m {
                max = tmpSum
            }
        }
    }
}
print(max)
