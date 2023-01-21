import Foundation

let t = Int(readLine()!)!
var arr = Array(repeating: 0, count: 101)
arr[1] = 1
arr[2] = 1
arr[3] = 1
arr[4] = 2
arr[5] = 2

for _ in 0..<t {
    let n = Int(readLine()!)!
    if n < 6 {
        print(arr[n])
    }
    else {
        for i in 6...n {
            arr[i] = arr[i-1] + arr[i-5]
        }
        print(arr[n])
    }
}
