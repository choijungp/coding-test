import Foundation

let input = readLine()!.split(separator: " ").map({ Int($0)! })
let n = input[0]
var a = input[1], b = input[2]

func getNext(_ number: Int) -> Int {
    return (number + 1) / 2
}

var cnt = 1
while true {
    if getNext(a) == getNext(b) {
        print(cnt)
        break
    }
    a = getNext(a)
    b = getNext(b)
    cnt += 1
}
