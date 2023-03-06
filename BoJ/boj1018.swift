import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]
var input: [String] = []
for _ in 0..<n {
    input.append(readLine()!)
}

var cnt = 0, minCnt = 100
for i in 0..<(n-8) + 1 {
    for j in 0..<(m-8) + 1 {
        cnt = 0
        let chess = Array(input[i])[j]
        
        for k in i..<i+8 {
            for t in j..<j+8 {
                if (k+t) % 2 == 0 {
                    if Array(input[k])[t] != chess {
                        cnt += 1
                    }
                }
                else {
                    if Array(input[k])[t] == chess {
                        cnt += 1
                    }
                }
            }
        }
        minCnt = min(cnt, 64 - cnt, minCnt)
    }
}
print(minCnt)
