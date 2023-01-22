import Foundation

let xywh = readLine()!.split(separator: " ").map({ Int($0)! })
let x = xywh[0], y = xywh[1], w = xywh[2], h = xywh[3]

print(min(abs(x-w), abs(y-h), x, y))
