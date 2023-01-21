import Foundation

let input = Array(readLine()!).map { String($0) }
var sum = 0
for ch in input {
    if ch == "Z" {
        sum += 10
    }
    else if Character(ch).asciiValue! < 83 {
        sum += (Int(Character(ch).asciiValue!) - 65) / 3 + 3
    }
    else {
        sum += (Int(Character(ch).asciiValue!) - 66) / 3 + 3
    }
}
print(sum)
