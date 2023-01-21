import Foundation

let n = Int(readLine()!)!
var wine: [Int] = [0]
var dp = Array(repeating: 0, count: n+1)

for _ in 0..<n {
    wine.append(Int(readLine()!)!)
}
dp[1] = wine[1]
if n > 1 {
    dp[2] = wine[1] + wine[2]
}
if n > 2 {
    for i in 3...n {
        dp[i] = max(dp[i-3] + wine[i-1] + wine[i], dp[i-2] + wine[i], dp[i-1])
    }
}
print(dp[n])
