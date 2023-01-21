import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let arr = readLine()!.split(separator: " ").map({ Int($0)! })

var sumArr : [Int] = [0]
var sum = 0
for num in arr {
    sum += num
    sumArr.append(sum)
}

for _ in 0..<nm[1] {
    let xy = readLine()!.split(separator: " ").map({ Int($0)! })
    let start = xy[0]
    let end = xy[1]
    print(sumArr[end] - sumArr[start - 1])
}
