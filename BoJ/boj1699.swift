import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Int.max, count: n+1)
dp[0] = 0

for i in 1...n {
    for j in 1...i {
        if j * j > i { break }
        dp[i] = min(dp[i], dp[i - j*j] + 1)
    }
}
print(dp[n])
