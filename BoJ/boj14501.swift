import Foundation

let n = Int(readLine()!)!
var t = Array(repeating: 0, count: n+1)
var p = Array(repeating: 0, count: n+1)
var dp = Array(repeating: 0, count: 1001)

for i in 1...n {
    let tp = readLine()!.split(separator: " ").map({ Int($0)! })
    t[i] = tp[0]
    p[i] = tp[1]
    dp[i] = p[i]
}

for i in stride(from: n, through: 1, by: -1) {
    if t[i] + i <= n + 1 {
        dp[i] = max(dp[i+1], dp[i + t[i]] + p[i])
    }
    else {
        dp[i] = dp[i+1]
    }
}
print(dp.max()!)
