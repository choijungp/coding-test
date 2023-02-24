import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]
var arr = Array(1...n)
for _ in 0..<m {
    var tmpArr = arr
    let ij = readLine()!.split(separator: " ").map({ Int($0)! })
    let i = ij[0] - 1, j = ij[1] - 1
    for k in 0...(j-i) {
        arr[i+k] = tmpArr[j-k]
    }
}
arr.forEach {
    print($0, terminator: " ")
}
