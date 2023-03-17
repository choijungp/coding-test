import Foundation

var arr = Array(repeating: 0, count: 1000000)
for i in 2..<100001 {
    if arr[i] == 1 { continue }
    for j in stride(from: 2*i, to: 1000000, by: i) {
        arr[j] = 1
    }
}
while true {
    let n = Int(readLine()!)!
    if n == 0 { break }

    var check = false
    for i in 2..<n {
        if arr[i] == 0 {
            if arr[n-i] == 0 {
                print("\(n) = \(i) + \(n-i)")
                check = true
                break
            }
            
            if check { break }
        }
    }
    if !check {
        print("Goldbach's conjecture is wrong.")
    }
}
