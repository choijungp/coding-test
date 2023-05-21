import Foundation

let nab = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nab[0], a = nab[1], b = nab[2]
if a < b {
    print("Bus")
} else if a > b {
    print("Subway")
} else {
    print("Anything")
}
