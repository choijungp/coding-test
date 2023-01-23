import Foundation

let abc = readLine()!.split(separator: " ").map({ Int($0)! })
print(abc[0] + abc[1] + abc[2])
