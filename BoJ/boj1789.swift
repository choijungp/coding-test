import Foundation

let n = Int(readLine()!)!
var cnt = 0, sum = 0
if n == 1 {
    print(1)
}
else {
    for i in 1...n {
        sum += i
        cnt += 1
        if sum == n {
            print(cnt)
            break
        }
        else if sum > n {
            print(cnt - 1)
            break
        }
    }
}
