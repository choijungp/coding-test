import Foundation

var sub1: [Int] = []
for _ in 0..<4 {
    sub1.append(Int(readLine()!)!)
}

var sub2: [Int] = []
for _ in 0..<2 {
    sub2.append(Int(readLine()!)!)
}
print(sub1.reduce(0, +) - sub1.min()! + sub2.max()!)
