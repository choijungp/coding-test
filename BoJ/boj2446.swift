import Foundation

let n = Int(readLine()!)!
for i in 0..<n {
    for _ in 0..<i {
        print(" ", terminator: "")
    }
    for _ in 0..<(2*n - (2*i + 1)) {
        print("*", terminator: "")
    }
    print("")
}
for i in 1..<n {
    for _ in 0..<(n - (i+1)) {
        print(" ", terminator: "")
    }
    for _ in 0..<(2*i + 1) {
        print("*", terminator: "")
    }
    print("")
}
