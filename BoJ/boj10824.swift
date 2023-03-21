import Foundation

let numbers = readLine()!.split(separator: " ").map({ Int($0)! })
let num1 = Int(String(numbers[0]) + String(numbers[1]))!
let num2 = Int(String(numbers[2]) + String(numbers[3]))!
print(num1 + num2)
