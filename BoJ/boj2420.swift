import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
print(abs(nm[0] - nm[1]))
