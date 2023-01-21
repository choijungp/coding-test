import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let num1: Int = (input[0] / 100) + ((input[0] % 100) / 10) * 10 + (input[0] % 10) * 100
let num2: Int = (input[1] / 100) + ((input[1] % 100) / 10) * 10 + (input[1] % 10) * 100

print([num1, num2].max()!)
