import Foundation

let n = Int(readLine()!)!
var minX = 10000, minY = 10000, maxX = -10000, maxY = -10000

for _ in 0..<n {
    let xy = readLine()!.split(separator: " ").map({ Int($0)! })
    if xy[0] > maxX {
        maxX = xy[0]
    }
    if xy[0] < minX {
        minX = xy[0]
    }
    if xy[1] > maxY {
        maxY = xy[1]
    }
    if xy[1] < minY {
        minY = xy[1]
    }
}

let lenX = maxX - minX
let lenY = maxY - minY
print(lenX * lenY)
