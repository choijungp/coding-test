import Foundation

let input = Int(readLine()!)!
var arr = Array(repeating: 0, count: input)
for i in 0..<input {
    let num = Int(readLine()!)!
    arr[i] = num
}
arr = arr.sorted()

for num in arr {
    print(num)
}
