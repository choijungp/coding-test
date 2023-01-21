import Foundation

let m = Int(readLine()!)!
let n = Int(readLine()!)!

var sum = 0
var min = m

for i in m...n {
    var isPrime = true
    
    if i == 1 {
        continue
    }
    for j in 2..<i {
        if i % j == 0 {
            isPrime = false
            break
        }
    }
    
    if isPrime {
        sum += i

        if sum == i {
            min = i
        }
    }
}

if sum == 0 {
    print(-1)
}
else {
    print(sum)
    print(min)
}
