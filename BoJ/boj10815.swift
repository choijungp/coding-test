import Foundation

let n = Int(readLine()!)!
let cards = readLine()!.split(separator: " ").map({ Int($0)! })
let maxCard = cards.max()!
let minCard = cards.min()!
var size = maxCard + 1
if minCard < 0 {
    size -= minCard
}

var arr = Array(repeating: 0, count: size)
for card in cards {
    arr[card - minCard] = 1
}

let m = Int(readLine()!)!
let check = readLine()!.split(separator: " ").map({ Int($0)! })
for card in check {
    if card > maxCard || card < minCard { 
        print(0, terminator: " ") 
    }
    else {
        print(arr[card - minCard], terminator: " ")
    }
}
