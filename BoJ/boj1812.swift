import Foundation

let n = Int(readLine()!)!
var sumArr: [Int] = []
for _ in 0..<n {
    let t = Int(readLine()!)!
    sumArr.append(t)
}
var sum = sumArr.reduce(0, +) / 2
for i in 0..<n {
    var num = 0
    for j in stride(from: 1, to: n, by: 2) {
        num += sumArr[(i+j) % n]
    }
    print(sum - num)
}
