import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: n + 1)
arr[1] = 1

if n != 1 {
    for i in 2...n {
        arr[i] = arr[i-1] + arr[i-2] 
    }  
}

print(arr[n])
