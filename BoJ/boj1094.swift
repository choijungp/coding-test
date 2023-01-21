import Foundation

let x = Int(readLine()!)!
var xArray: [Int] = [64]

while xArray.reduce(0, +) != x {
    let tmp = xArray.last! / 2
    if xArray.reduce(0, +) > x {
        xArray.removeLast()
    }
    xArray.append(tmp)
}
print(xArray.count)
