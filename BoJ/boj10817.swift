import Foundation

var arr = readLine()!.split(separator: " ").map({ Int($0)! })
arr.sort()

print(arr[1])
