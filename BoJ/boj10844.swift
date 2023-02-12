import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 10), count: 101)

for i in 2...8 {
    dp[1][i] = 1
    dp[2][i] = 2
}

dp[1][1] = 1
dp[1][9] = 1
dp[2][0] = 1
dp[2][1] = 1
dp[2][9] = 1

if n > 2 {
    for i in 3...n {
        for j in 0...9 {
            if j == 0 {
                dp[i][j] = dp[i-1][j+1] % 1000000000
            }
            else if j == 9 {
                dp[i][j] = dp[i-1][j-1] % 1000000000
            }
            else {
                dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % 1000000000
            }
        }
    }
}
print(dp[n].reduce(0, +) % 1000000000)
