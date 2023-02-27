import Foundation

var maxCnt = 0
var arr: [String] = []
for _ in 0..<5 {
    let str = readLine()!
    arr.append(str)
    maxCnt = max(maxCnt, str.count)
}

var result: [String] = []
for i in 0..<maxCnt {
    for j in 0..<5 {
        if arr[j].count > i {
            let tmp = Array(arr[j])
            result.append(String(tmp[i]))
        }
    }
}
print(result.joined(separator: ""))
