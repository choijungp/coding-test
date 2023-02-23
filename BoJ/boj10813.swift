import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]
var arr = Array(1...n)
for _ in 0..<m {
    let ij = readLine()!.split(separator: " ").map({ Int($0)! })
    let i = ij[0], j = ij[1]
    let tmp = arr[i-1]
    arr[i-1] = arr[j-1]
    arr[j-1] = tmp
}
arr.forEach {
    print($0, terminator: " ")
}
