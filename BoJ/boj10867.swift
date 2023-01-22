import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({ Int($0)! })
arr = Array(Set(arr))
arr.sort()

arr.forEach {
    print($0, terminator: " ")
}
