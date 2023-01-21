import Foundation

let n = Int(readLine()!)!
var paper :[[Int]] = []
var maxX = 0
var maxY = 0
for _ in 0..<n {
    let xy = readLine()!.split(separator: " ").map({ Int($0)! })
    paper.append(xy)
    
    if xy[0] > maxX {
        maxX = xy[0]
    }
    if xy[1] > maxY {
        maxY = xy[1]
    }
}
var arr = Array(repeating: Array(repeating: 0, count: maxX + 11), count: maxY + 11)
for p in paper {
    for i in p[1]..<p[1]+10 {
        for j in p[0]..<p[0]+10 {
            if i > maxY + 10 || j > maxX + 10 { continue }
            arr[i][j] = 1
        }
    }
}
var sum = 0
for i in 0..<maxX+11 {
    for j in 0..<maxY+11 {
        sum += arr[j][i]
    }
}
print(sum)
