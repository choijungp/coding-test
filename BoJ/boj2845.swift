import Foundation

let lp = readLine()!.split(separator: " ").map({ Int($0)! })
let num = lp[0] * lp[1]
let people = readLine()!.split(separator: " ").map({ Int($0)! })
for person in people {
    print(person - num, terminator: " ")
}
