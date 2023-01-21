import Foundation

let ab = readLine()!.split(separator: " ").map({ Int($0)! })
let a = ab[0]
let b = ab[1]
var arr: [Int] = []

for i in 1...b {
    for _ in 0..<i {
        arr.append(i)
    }
}

print(arr[a-1..<b].reduce(0, +))
