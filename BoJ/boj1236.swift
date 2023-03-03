import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]
var cntN = 0, cntM = 0

var input: [String] = []
for i in 0..<n {
    let str = readLine()!
    input.append(str)
    if !str.contains("X") {
        cntN += 1
    }
}

for i in 0..<m {
    var check = false
    for j in 0..<n {
        let tmp = Array(input[j])
        if tmp[i] == "X" {
            check = true
            break
        }
    }
    if !check {
        cntM += 1
    }
}
print(max(cntN, cntM))
