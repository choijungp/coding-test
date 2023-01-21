import Foundation

while true {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    
    if input == [0, 0, 0] { break }
    let max = input.max()!
    var sum: Double = 0
    for i in input {
        if i == max { continue }
        sum += pow(Double(i), 2)
    }
    
    if sqrt(sum) == Double(max) {
        print("right")
    }
    else {
        print("wrong")
    }
}
