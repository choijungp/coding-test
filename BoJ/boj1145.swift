import Foundation

let numbers = readLine()!.split(separator: " ").map({ Int($0)! })
var num = numbers.min()!

while true {
    var cnt = 0
    for i in 0..<5 {
        if num % numbers[i] == 0 {
            cnt += 1
        }
    }
    if cnt > 2 {
        print(num)
        break
    }
    num += 1
}
