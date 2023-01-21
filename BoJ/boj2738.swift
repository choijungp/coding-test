import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
var arr1 = Array(repeating: Array(repeating: 0, count: nm[1]), count: nm[0])
var arr2 = Array(repeating: Array(repeating: 0, count: nm[1]), count: nm[0])
var result = Array(repeating: Array(repeating: 0, count: nm[1]), count: nm[0])

for i in 0..<nm[0] {
    let array = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<nm[1] {
        arr1[i][j] = array[j]
    }
}
for i in 0..<nm[0] {
    let array = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<nm[1] {
        arr2[i][j] = array[j]
    }
}

for i in 0..<nm[0] {
    for j in 0..<nm[1] {
        print(arr1[i][j] + arr2[i][j], terminator: " ")
    }
    print("")
}
