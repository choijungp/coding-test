import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0]
let m = nm[1]

var cards = readLine()!.split(separator: " ").map({ Int($0)! })
cards.sort()
for _ in 0..<m {
    let change = cards[0] + cards[1]
    cards[0] = change
    cards[1] = change
    cards.sort()
}
print(cards.reduce(0, +))
