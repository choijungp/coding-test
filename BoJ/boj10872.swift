import Foundation

var num = Int(readLine()!)!
var result = 1

while num > 0 {
    result *= num
    num -= 1
}
print(result)
