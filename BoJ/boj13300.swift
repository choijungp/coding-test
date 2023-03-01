import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nk[0], k = nk[1]
var men = Array(repeating: 0, count: 6)
var women = Array(repeating: 0, count: 6)
for _ in 0..<n {
    let sy = readLine()!.split(separator: " ").map({ Int($0)! })
    let s = sy[0], y = sy[1]
    if s == 0 {
        women[y-1] += 1
    }
    else {
        men[y-1] += 1
    }
}
var cnt = 0
for i in 0..<6 {
    if women[i] % k == 0 && women[i] != 0 {
        cnt += (women[i] / k)
    }
    else if women[i] != 0  {
        cnt += (women[i] / k) + 1
    }
    if men[i] % k == 0 && men[i] != 0 {
        cnt += (men[i] / k)
    }
    else if men[i] != 0 {
        cnt += (men[i] / k) + 1
    }
}
print(cnt)
