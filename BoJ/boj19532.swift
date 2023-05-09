import Foundation

let abcdef = readLine()!.split(separator: " ").map({ Int($0)! })
var a = abcdef[0], b = abcdef[1], c = abcdef[2]
var d = abcdef[3], e = abcdef[4], f = abcdef[5]

let x = (c * e - b * f) / (a * e - b * d)
let y = (c * d - a * f) / (b * d - a * e)
print(x, y)
