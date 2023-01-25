import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({ Int($0)! })
arr.sort()
arr.reverse()
var result = arr[0] + 1

for i in 1...n {
    if result < i + arr[i-1] {
        result = i + arr[i-1]
    }
}
print(result + 1)
