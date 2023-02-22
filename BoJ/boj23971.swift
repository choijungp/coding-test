import Foundation

let hwnm = readLine()!.split(separator: " ").map({ Int($0)! })
let d1 = Double(hwnm[0]) / Double(hwnm[2] + 1)
let d2 = Double(hwnm[1]) / Double(hwnm[3] + 1)
let i1 = Int(ceil(d1)), i2 = Int(ceil(d2))
print(i1 * i2)
