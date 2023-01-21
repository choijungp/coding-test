import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!
    var cnt = 0
    
    for i in input {
        if i == "(" {
            cnt += 1
        }
        else {
            cnt -= 1
            if cnt < 0 {
                break
            }
        }
    }
    
    print(cnt == 0 ? "YES" : "NO")
}
