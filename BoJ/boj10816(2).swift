import Foundation

let n = Int(readLine()!)!
let cards = readLine()!.split(separator: " ").map({ Int($0)! })
var dict = [Int: Int]()

for card in cards {
    dict[card, default: 0] += 1
}

let m = Int(readLine()!)!
let check = readLine()!.split(separator: " ").map({ Int($0)! })
for card in check {
    if !dict.keys.contains(card) { print(0, terminator: " ") }
    else {
        print(dict[card]!, terminator: " ")
    }
}
