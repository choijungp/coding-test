import Foundation

var cnt = Int(readLine()!)!
var sum = 0
let numArr = Array(readLine()!).map({ Int(String($0))! })

for num in numArr {
    sum += num
}
print(sum)
