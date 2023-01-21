import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nk[0]
let k = nk[1]
var arr = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 0...n {
    for j in 0...n {
        if i == 0 || j == 0 || i == j { 
            arr[i][j] = 1
        }
        else {
            arr[i][j] = (arr[i-1][j-1] % 10007 + arr[i-1][j] % 10007) % 10007
        }
    }
}
print(arr[n][k])
