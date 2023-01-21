import Foundation

let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map({ Int($0)! })

var min = numbers.min()!
var tmp: [Int] = [min]
var arr = [[Int]]()
for i in 1..<numbers.count {
    if numbers[i] - min == 1 {
        tmp.append(numbers[i])
        min = numbers[i]
    }
    else {
        arr.append(tmp)
        min = numbers[i]
        tmp = [min]
    }
}
arr.append(tmp)

var sum = 0
for i in 0..<arr.count {
    sum += arr[i][0]
}
print(sum)
