import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: "-")
    let value2 = Int(input[1])!
    var value1 = 0
    let arrValue1 = Array(input[0])
    
    var pod = 26 * 26
    for i in 0..<3 {
        value1 += pod * (Int(exactly: arrValue1[i].asciiValue!)! - 65)
        pod /= 26
    }
    
    if abs(value1 - value2) <= 100 {
        print("nice")
    }
    else {
        print("not nice")
    }
}
