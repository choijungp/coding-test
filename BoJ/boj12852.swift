import Foundation

let n = Int(readLine()!)!
var arr: [Int] = [n]
var dp = Array(repeating: (cnt: Int.max, before: 0), count: n + 1)
dp[0] = (0, 0)

for i in 1...n {
    dp[i] = (dp[i-1].cnt + 1, i - 1)
    
    if i % 2 == 0 && i >= 2 {
        if dp[i].cnt > dp[i / 2].cnt + 1 {
            dp[i] = (dp[i / 2].cnt + 1, i / 2)
        }
    }
    
    if i % 3 == 0 && i >= 3 {
        if dp[i].cnt > dp[i / 3].cnt + 1 {
            dp[i] = (dp[i / 3].cnt + 1, i / 3)
        }
    }
}

print(dp[n].cnt - 1)
var t = n
while t > 1 {
    t = dp[t].before
    arr.append(t)
}

for i in arr {
    print(i, terminator: " ")
}
