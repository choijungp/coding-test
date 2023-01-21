import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: n+1)
if n == 1 {
    print(1)
}
else if n == 2 {
    print(2)
}
else {
    arr[1] = 1
    arr[2] = 2   
    for i in 3...n {
        arr[i] = arr[i-1] % 15746 + arr[i-2] % 15746
    }
    print(arr[n] % 15746)
}
