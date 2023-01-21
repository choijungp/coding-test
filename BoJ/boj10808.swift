import Foundation

let input = readLine()!
var arr = Array(repeating: 0, count: 26)

for i in input {
    arr[Int(Character(extendedGraphemeClusterLiteral: i).asciiValue!) - 97] += 1
}
for i in 0..<26 {
    print(arr[i], terminator: " ")
}
