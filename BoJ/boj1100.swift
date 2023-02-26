import Foundation

var cnt = 0
for i in 0..<8 {
    let idx = i % 2
    let arr = Array(readLine()!)
    
    for j in stride(from: idx, to: 8, by: 2) {
        if arr[j] == "F" {
            cnt += 1
        }
    }
}
print(cnt)
