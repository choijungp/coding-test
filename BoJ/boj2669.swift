import Foundation

var arr = Array(repeating: Array(repeating: 0, count: 101), count: 101)
for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    for i in input[0]..<input[2] {
        for j in input[1]..<input[3] {
            arr[i][j] = 1
        }
    }
}

var sum = 0
for i in 0..<101 {
    sum += arr[i].reduce(0, +)
}
print(sum)
