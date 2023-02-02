import Foundation

let n = Int(readLine()!)!
let budget = readLine()!.split(separator: " ").map({ Int($0)! })
let m = Int(readLine()!)!

var start = 0
var end = budget.max()!
var mid = (start + end) / 2
var result = 0
while start <= end {
    var sum = 0
    for money in budget {
        sum += min(money, mid)
    }
    
    if sum <= m {
        start = mid + 1
        result = mid
    }
    else {
        end = mid - 1
    }
    mid = (start + end) / 2
}
print(result)
