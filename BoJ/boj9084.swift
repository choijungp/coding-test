import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    let coins = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
    let money = Int(readLine()!)!
    
    var dp = Array(repeating: Array(repeating: 0, count: money+1), count: n+1)
    for i in 1...n {
        let coin = coins[i-1]
        for j in 1...money {
            if j >= coin {
                if j % coin == 0 {
                    dp[i][j] += 1
                }
                for k in 0...(j/coin) {
                    dp[i][j] += dp[i-1][j - k*coin]
                }
            } else {
                dp[i][j] = dp[i-1][j]
            }
        }
    }
    print(dp[n][money])
}
