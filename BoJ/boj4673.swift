import Foundation

let selfNumbers = [1, 3, 5, 7, 9, 20, 31, 42, 53, 64, 75, 86, 97]
var arr = Array(repeating: 0, count: 10001)
for num in selfNumbers {
    print(num)
}

for i in 86...10000 {
    var sum = i
    for j in String(i) {
        sum += Int(String(j))!
    }
    if sum > 10000 { continue }
    arr[sum] = 1
}

for i in 100...10000 {
    if arr[i] == 0 { print(i) }
}
