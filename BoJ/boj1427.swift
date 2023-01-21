import Foundation

var input = readLine()!
var arr: [Int] = []
for num in input {
    arr.append(Int(String(num))!)
}
arr.sort()
arr.reverse()

for i in arr {
    print(i, terminator: "")
}
