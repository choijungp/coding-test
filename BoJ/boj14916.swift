import Foundation

let n = Int(readLine()!)!
if n % 5 == 0 {
    print(n/5)
}
else {
    var check = 0
    for i in stride(from: n/5, through: 0, by: -1) {
        if (n - (5 * i)) % 2 == 0 {
            check = 1
            print(i + (n - (5 * i)) / 2)
            break
        }
    }
    if check == 0 {
        print(-1)
    }
}
