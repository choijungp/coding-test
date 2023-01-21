import Foundation

let n = Int(readLine()!)!
let arrA = Set(readLine()!.split(separator: " ").map({ Int($0)! }))

let m = Int(readLine()!)!
let arrM = readLine()!.split(separator: " ").map({ Int($0)! })

for i in arrM {
    if arrA.contains(i) {
        print(1)
    }
    else {
        print(0)
    }
}
