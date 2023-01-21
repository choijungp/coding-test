import Foundation

var num = Int(readLine()!)!
if num == 1 {
    print("")
}

for i in stride(from: 2, through: num, by: 1) {
    while num % i == 0 {
        print(i)
        num /= i
    }
}
