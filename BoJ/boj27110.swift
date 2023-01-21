import Foundation

let n = Int(readLine()!)!
let abc = readLine()!.split(separator: " ").map({ Int($0)! })
var cnt = 0
for i in abc {
    if i <= n {
        cnt += i
    }
    else {
        cnt += n
    }
}
print(cnt)
