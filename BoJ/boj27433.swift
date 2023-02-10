import Foundation

let n = Int(readLine()!)!
if n == 0 {
    print(1)
}
else {
    var res = 1
    for i in 1...n {
        res *= i
    }
    print(res)
}
