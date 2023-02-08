import Foundation

let n = Int(readLine()!)!
var lines: [Int] = []
for _ in 0..<n {
    lines.append(Int(readLine()!)!)
}
var last = lines[n-1]
var cnt = 1
for i in stride(from: n-2, through: 0, by: -1) {
    if lines[i] > last {
        cnt += 1
        last = lines[i]
    }
}
print(cnt)
