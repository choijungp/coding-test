import Foundation

let n = Int(readLine()!)!
var str = Array(readLine()!)
for _ in 1..<n {
    let tmp = Array(readLine()!)
    for (i, c) in tmp.enumerated() {
        if str[i] != c {
            str[i] = "?"
        }
    }
}
print(str.map{ String($0) }.joined())
