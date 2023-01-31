import Foundation

let kn = readLine()!.split(separator: " ").map({ Int($0)! })
let k = kn[0]
let n = kn[1]
var lines: [Int] = []

for _ in 0..<k {
    lines.append(Int(readLine()!)!)
}
var start = 1
var end = lines.max()!

while start <= end {
    var cnt = 0
    let mid = (start + end) / 2
    for line in lines {
        cnt += line / mid
    }
    if cnt < n {
        end = mid - 1
    }
    else {
        start = mid + 1
    }
}
print(start - 1)
