import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

if input[0] >= input[2] {
    print(1)
}
else if (input[2] - input[0]) % (input[0] - input[1]) == 0 {
    print((input[2] - input[0]) / (input[0] - input[1]) + 1)
}
else {
    print((input[2] - input[0]) / (input[0] - input[1]) + 2)
}
