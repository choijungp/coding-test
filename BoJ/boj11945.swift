import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
for _ in 0..<nm[0] {
    var arr = Array(readLine()!)
    arr.reverse()
    print(arr.map({ String($0) }).joined(separator: ""))
}
