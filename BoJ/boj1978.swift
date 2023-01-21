import Foundation

let num = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map({ Int($0)! })
var cnt = 0

for number in numbers {
    var isPrime = true 
    
    if number == 1 {
        continue
    }
    
    for i in 2..<number {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    
    if isPrime {
        cnt += 1
    }
}

print(cnt)
