import Foundation

let n = Int(readLine()!)!
var check = 0

if n % 5 == 0 {
    print(n / 5)
}
else {
    for i in stride(from: n / 5, to: 0, by: -1) { 
        if (n - i * 5) % 3 == 0 {
            print(i + ((n - i * 5) / 3))
            check = 1
            break
        }
    }
    
    if check == 0 {
        if n % 3 == 0 {
            print(n / 3)
        }
        else {
            print(-1)
        }
    }
}
