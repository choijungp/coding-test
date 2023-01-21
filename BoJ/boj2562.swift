import Foundation

var maxNum = 0 
var result = 0

for i in 0..<9 {
    let num = Int(readLine()!)! 
    if num > maxNum {
        maxNum = num
        result = i + 1
    }
}

print(maxNum)
print(result)
