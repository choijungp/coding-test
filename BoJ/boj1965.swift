import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({ Int($0)! })
var dp = Array(repeating: 1, count: n+1)

for i in 1..<n {
    for j in 0..<i {
        if dp[i] < dp[j] + 1 && arr[j] < arr[i] {
            dp[i] = dp[j] + 1
        }
    }
}
print(dp.max()!)
