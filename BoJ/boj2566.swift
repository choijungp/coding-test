import Foundation

var max = -1
var row = 0
var col = 0

for i in 1...9 {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    if arr.max()! > max {
        max = arr.max()!
        row = i
        
        for j in 0..<9 {
            if arr[j] == max {
                col = j+1
            }
        }
    }
}
print(max)
print(row, col)
