import Foundation

let n = Int(readLine()!)!
for i in 1...n {
    for j in 0..<2*n {
        if i % 2 == 1 {
            if j % 2 == 0 {
                print("*", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
        }
        else {
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
