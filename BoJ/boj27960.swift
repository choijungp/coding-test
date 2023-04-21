import Foundation

var arrA = Array(repeating: false, count: 10)
var arrB = Array(repeating: false, count: 10)

let ab = readLine()!.split(separator: " ").map({ Int($0)! })
var a = ab[0], b = ab[1], c = 0
var num = 512
for i in stride(from: 9, through: 0, by: -1) {
    if a >= num {
        arrA[i] = true
        a -= num
    } 
    if b >= num {
        arrB[i] = true
        b -= num
    }
    num /= 2
}
num = 1
for i in 0..<10 {
    if arrA[i] != arrB[i] {
        c += num
    }
    num *= 2
}
print(c)
