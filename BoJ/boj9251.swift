import Foundation

let str1 = readLine()!
let str2 = readLine()!
let arr1 = Array(str1), arr2 = Array(str2)
var dp = Array(repeating: Array(repeating: 0, count: arr2.count + 1), count: arr1.count + 1)

for i in 1...arr1.count {
    for j in 1...arr2.count {
        if arr1[i-1] == arr2[j-1] {
            dp[i][j] = dp[i-1][j-1] + 1
        } 
        else {
            dp[i][j] = max(dp[i][j-1], dp[i-1][j])
        }
    }
}
print(dp[arr1.count][arr2.count])
