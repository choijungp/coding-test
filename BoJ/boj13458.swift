import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let bc = readLine()!.split(separator: " ").map({ Int($0)! })
let b = bc[0], c = bc[1]

var cnt = 0
for num in arr {
    cnt += 1
    if (num - b) > 0 {
        if (num - b) % c  == 0 {
            cnt += (num - b) / c 
        }
        else {
            cnt += (num - b) / c + 1
        }
    }
}
print(cnt)
