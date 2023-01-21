import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    arr.append(input)
}

arr.sort(by : { $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0] })

for i in 0..<n {
    print("\(arr[i][0]) \(arr[i][1])")
}
