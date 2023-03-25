import Foundation

let t = Int(readLine()!)!
var q = 0, d = 0, n = 0, p = 0
for _ in 0..<t {
    var c = Int(readLine()!)!
    q = c / 25
    c %= 25
    
    d = c / 10
    c %= 10
    
    n = c / 5
    p = c % 5
    
    print(q, d, n, p)
}
