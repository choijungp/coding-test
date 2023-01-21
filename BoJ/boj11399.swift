import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({ Int($0)! })

arr.sort()
var sum = 0
var sumArr: [Int] = []
for i in 0..<n {
    sum += arr[i]
    sumArr.append(sum)
}

print(sumArr.reduce(0, +))
