import Foundation

let n = Int(readLine()!)!
for i in 0..<n {
    for _ in 0..<i {
        print(" ", terminator: "")
    }
    for _ in 0..<(2*n - (1 + 2*i)) {
        print("*", terminator: "")
    }
    print("")
}
