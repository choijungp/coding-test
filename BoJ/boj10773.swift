import Foundation

let k = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<k {
    let num = Int(readLine()!)!
    if num == 0 {
        arr.removeLast()
    }
    else {
        arr.append(num)
    }
}
print(arr.reduce(0, +))
