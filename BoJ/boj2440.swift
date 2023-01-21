import Foundation

let n = Int(readLine()!)!
var now = n
for _ in 0..<n {
    for _ in 0..<now {
        print("*", terminator: "")
    }
    print("")
    now -= 1
}
