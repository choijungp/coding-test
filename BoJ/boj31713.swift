import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
    var a = input[0], b = input[1]
    var needA = 0, needB = 0
    
    while a > 0 || b > 0 {
        if b < 3 {
            needB += 3 - b
            b = 3
        }
        if a < 1 {
            a = 1
            needA += 1
        }
        
        if b % 4 == 0 {
            if a*4 > b {
                b -= 3
                a -= 1
            } else {
                b -= 4
                a -= 1
            }
        } else {
            b -= 3
            a -= 1
        }
    }
    print("\(needA + needB)")
}
