import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let arr = Array(readLine()!)
    print(arr[0], terminator: "")
    print(arr[arr.count - 1])
}
