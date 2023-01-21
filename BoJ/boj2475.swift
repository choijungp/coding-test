import Foundation

let numbers = readLine()!.split(separator: " ").map({ Int($0)! })
var sum = 0
for num in numbers {
    sum += Int(pow(Double(num), 2.0))
}
print(sum % 10)
