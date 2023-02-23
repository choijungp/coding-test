import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]
var arr = Array(repeating: 0, count: n)
for _ in 0..<m {
    let ijk = readLine()!.split(separator: " ").map({ Int($0)! })
    let i = ijk[0], j = ijk[1], k = ijk[2]
    for x in i...j {
        arr[x-1] = k
    }
}
arr.forEach {
    print($0, terminator: " ")
}
