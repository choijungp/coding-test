import Foundation

let input = Array(readLine()!)
var result = [Int](repeating: -1, count: 26)

for i in 0..<input.count {
    if result[Int(input[i].asciiValue!) - 97] == -1 {
        result[Int(input[i].asciiValue!) - 97] = i
    }
}

for x in result {
    print(x, terminator: " ")
}
