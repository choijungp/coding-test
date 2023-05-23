import Foundation

let hj = readLine()!
for i in 0..<3 {
    for j in 0..<3 {
        if i == 1 && j == 1 {
            print(":\(hj):", terminator: "")
        } else {
            print(":fan:", terminator: "")
        }
    }
    print("")
}
