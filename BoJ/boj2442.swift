import Foundation

let num = Int(readLine()!)!

for i in 1...num {
    for j in 0..<(num - i) {
        print(" ", terminator: "")
    }
    for k in 0..<(2*i - 1) {
        print("*", terminator: "")
    }
    print("")
}
