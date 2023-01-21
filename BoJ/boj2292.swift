import Foundation

let num = Int(readLine()!)!
var sum = 1
var i = 0

while true {
    sum += 6 * i
    if num <= sum {
        print(i + 1)
        break
    }
    i += 1
}
