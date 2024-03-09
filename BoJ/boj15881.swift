import Foundation

let n = Int(readLine()!)!
let input = readLine()!.map({ String($0) })
var cnt = 0, i = 0

while i < n {
    if input[i] == "p" {
        if i < n-3 {
            if (input[i]+input[i+1]+input[i+2]+input[i+3]) == "pPAp" {
                i += 3
                cnt += 1
            }
        }
    }
    i += 1
}
print(cnt)
