import Foundation

let input = readLine()!.split(separator: " ").map({ Int($0)! })
let n = input[0]
var k = input[1]

var coins: [Int] = []
for _ in 0..<n {
    let coin = Int(readLine()!)!
    coins.append(coin)
}
coins.reverse()

var cnt = 0
for i in 0..<n {
    if k == 0 { break }
    if coins[i] > k { continue }
    cnt += k / coins[i]
    k -= coins[i] * (k / coins[i])
}
print(cnt)
