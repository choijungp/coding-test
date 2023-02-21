import Foundation

var check = Array(repeating: 0, count: 10)
let room = Array(readLine()!)

for r in room {
    if r == "6" || r == "9" {
        if check[6] < check[9] {
            check[6] += 1
        }
        else {
            check[9] += 1
        }
    }
    else {
        check[Int(String(r))!] += 1
    }
}
print(check.max()!)
