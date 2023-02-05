import Foundation

let n = Int(readLine()!)!
let f = Int(readLine()!)!

var num = (n / 100) * 100
var result = 0
for i in 0..<100 {
    if (num + i) % f == 0 {
        result = i
        break
    }
}
if result < 10 {
    print("0\(result)")
}
else {
    print(result)
}
