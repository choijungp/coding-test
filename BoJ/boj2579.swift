import Foundation

let t = Int(readLine()!)!
var stairs: [Int] = []
var dp = Array(repeating: 0, count: t)

for i in 0..<t {
    let n = Int(readLine()!)!
    stairs.append(n)
    
    if i == 0 { 
        dp[0] = stairs[0]
    }
    else if i == 1 {
        dp[1] = max(dp[0] + stairs[1], stairs[1])
    }
    else if i == 2 {
        dp[2] = max(dp[0] + stairs[2], stairs[1] + stairs[2])
    }
    else {
        dp[i] = max(dp[i-3] + stairs[i-1] + stairs[i], dp[i-2] + stairs[i])
    }
}

print(dp[t-1])
