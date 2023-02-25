import Foundation

var x: [Int] = [], y: [Int] = []
var x1 = 0, y1 = 0
for _ in 0..<3 {
    let xy = readLine()!.split(separator: " ").map({ Int($0)! })
    if x.contains(xy[0]) {
        x1 = xy[0]
    }
    if y.contains(xy[1]) {
        y1 = xy[1]
    }
    x.append(xy[0])
    y.append(xy[1])
}
print(x.filter({ $0 != x1})[0], y.filter({ $0 != y1})[0])
