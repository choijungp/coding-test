import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nk[0], k = nk[1]
var arr = readLine()!.split(separator: ",").map({ Int($0)! })
for i in 0..<k {
    for j in 0..<(n - i - 1) {
        arr[j] = arr[j+1] - arr[j]
    }
}
for i in 0..<(n-k)-1 {
    print(arr[i], terminator: ",")
}
print(arr[n-k-1])
