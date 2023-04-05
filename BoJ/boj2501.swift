import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nk[0], k = nk[1]
var cnt = 0
var check = false
for i in 1...n {
    if n % i == 0 {
        cnt += 1
        if cnt == k {
            check = true
            print(i)
        }
    }
}
if !check {
    print(0)
}
