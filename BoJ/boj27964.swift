import Foundation

let cnt = Int(readLine()!)
var topings = readLine()!.split(separator: " ").map({ String($0) })

var cheeseTopings: [String] = topings.filter({ $0.hasSuffix("Cheese") })
cheeseTopings = Array(Set(cheeseTopings))

if cheeseTopings.count >= 4 {
    print("yummy")
} else {
    print("sad")
}
