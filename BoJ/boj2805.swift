import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0]
let m = nm[1]
let trees = readLine()!.split(separator: " ").map({ Int($0)! })

var start = 0
var end = trees.max()!
var mid = 0

while start <= end {
    var sum = 0
    mid = (start + end) / 2
    
    for tree in trees {
        if tree < mid { continue }
        sum += tree - mid
    }
    
    if sum < m {
        end = mid - 1
    }
    else {
        start = mid + 1
    }
}
print(start - 1)
