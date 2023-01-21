import Foundation

let n = Int(readLine()!)!
for i in 1..<n {
    for _ in 0..<(n-i) {
        print(" ", terminator: "")
    }
    print("*", terminator: "")
    if i != 1 {
        for _ in 0..<(2*(i-1) - 1)  {
            print(" ", terminator: "")
        }
        print("*", terminator: "")
    }
    print("")
}
for _ in 0..<2*n - 1 {
    print("*", terminator: "")
}
