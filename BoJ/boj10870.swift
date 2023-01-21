import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 21)
arr[1] = 1

for i in 2...20 {
    arr[i] = arr[i-1] + arr[i-2]
}
print(arr[n])
