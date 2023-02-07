import Foundation

let n = Int(readLine()!)!
var arrA = readLine()!.split(separator: " ").map({ Int($0)! })
var arrB = readLine()!.split(separator: " ").map({ Int($0)! })
arrA.sort()
arrB.sort()
arrB.reverse()

var res = 0
for i in 0..<n {
    res += arrA[i] * arrB[i]
}
print(res)
