import Foundation

let num = Int(readLine()!)!

for _ in 0..<num {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    if input[2] <= input[0] {
        print(100 * input[2] + 1)
    }
    else if (input[2] % input[0]) == 0 {
        print(100 * input[0] + (input[2] / input[0]))
    }
    else {
        print(100 * (input[2] % input[0]) + (input[2] / input[0]) + 1)
    }
}
