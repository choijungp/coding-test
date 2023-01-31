import Foundation

let rs = readLine()!.split(separator: " ").map({ Int($0)! })
let r1 = rs[0]
let s = rs[1]

print(s * 2 - r1)
