import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map({ Int($0)! })
var sum = 0, tmp = 0
for i in 0..<n {
    if input[i] == 1 {
        tmp += 1
    } 
    else {
        tmp = 0
    }
    sum += tmp
}
print(sum)
