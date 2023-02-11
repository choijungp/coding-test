import Foundation

let t = Int(readLine()!)!
func isPrime(_ n: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(n)))+1 {
        if n % i == 0 {
            return false
        }
    }
    return true
}
for _ in 0..<t {
    var n = Int(readLine()!)!
    
    if n == 0 || n == 1 {
        print(2)
    }
    else {
        while true {
            if isPrime(n) {
                print(n)
                break
            }
            n += 1
        }
    }
}
