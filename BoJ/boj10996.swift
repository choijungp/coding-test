import Foundation

let n = Int(readLine()!)!
for i in 0..<2*n {
    if i % 2 == 0 {
        for j in 0..<n {
            if j % 2 == 0 {
                print("*", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
        }
    }
    else {
        for j in 0..<n {
            if j % 2 == 1 {
                print("*", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
        }
    }
    print("")
}
