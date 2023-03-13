import Foundation

var left = Array(readLine()!)
var right = [Character]()
let m = Int(readLine()!)!
for _ in 0..<m {
    let command = readLine()!
    if command == "L" {
        if !left.isEmpty {
            right.append(left.popLast()!)
        }
    }
    else if command == "D" {
        if !right.isEmpty {
            left.append(right.popLast()!)
        }
    }
    else if command == "B" {
        if !left.isEmpty {
            left.removeLast()
        }
    }
    else {
        left.append(command.last!)
    }
}
print(String(left + right.reversed()))
