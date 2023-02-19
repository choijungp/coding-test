import Foundation

let t = Int(readLine()!)!
var arr = Array(repeating: 1, count: 10001)
for i in 2..<10000 {
    if arr[i] == 0 { continue }
    for j in stride(from: i*2, through: 10000, by: i) {
        arr[j] = 0
    }
    if arr[i] == 1 {
        arr[i] = i
    }
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    var n1 = n / 2
    var n2 = n / 2
    
    while true {
        if (arr[n1] + arr[n2]) == n {
            print(n1, n2)
            break
        }
        else {
            n1 -= 1
            n2 += 1
        }
    }
}
