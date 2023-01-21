import Foundation

let n = Int(readLine()!)!
func isHansu(_ number: Int) -> Bool {
    if number < 10 { return true }
    
    var num = number
    let d = num % 10 - (num % 100) / 10
    var n = num % 10
    num /= 10
    
    while num > 0 {
        if d != n - num % 10 {
            return false
        }
        n = num % 10
        num /= 10
    }
    return true
}

var result = 0
for i in 1...n {
    if isHansu(i) {
        result += 1
    }
}
print(result)
