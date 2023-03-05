import Foundation

let knm = readLine()!.split(separator: " ").map({ Int($0)! })
let k = knm[0], n = knm[1], m = knm[2]
let snack = k * n
print(snack > m ? snack - m : 0)
