import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
var score = readLine()!.split(separator: " ").map({ Int($0)! })

score = score.sorted().reversed()
print(score[nk[1]-1])
