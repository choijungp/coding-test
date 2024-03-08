import Foundation

let nk = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
let n = nk[0], k = nk[1]

var backpacks: [(Int, Int)] = []
for _ in 0..<n {
    let wv = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
    backpacks.append((wv[0], wv[1]))
}

var dp = Array(repeating: Array(repeating: 0, count: k+1), count: n+1)
for i in 1...n {
    for j in 1...k {
        let w = backpacks[i-1].0, v = backpacks[i-1].1
        if j < w {
            dp[i][j] = dp[i-1][j]
        } else {
            dp[i][j] = max(dp[i-1][j], dp[i-1][j-w] + v)
        }
    }
}
print(dp[n][k])
