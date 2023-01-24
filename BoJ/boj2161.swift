import Foundation

let n = Int(readLine()!)!
var arr = Array(1...n)
var tmp: [Int] = []

while arr.count != 1 {
    tmp.append(arr[0])
    arr.removeFirst()
    arr.append(arr[0])
    arr.removeFirst()
}
tmp.append(arr[0])

tmp.forEach {
    print($0, terminator:" ")
}
