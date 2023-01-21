import Foundation

let mn = readLine()!.split(separator: " ").map({ Int($0)! })
var arr = Array(repeating: 1, count: mn[1]+1)
arr[1] = 0

for i in 2...mn[1] {
    if arr[i] == 0 { continue }
    
    for j in stride(from: i + i, through: mn[1], by: i) {
        arr[j] = 0
    }
}

for k in mn[0]...mn[1] {
    if arr[k] == 1 {
        print(k)
    }
}
