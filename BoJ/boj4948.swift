import Foundation

while true {
    var n = Int(readLine()!)!
    if n == 0 {
        break
    }
    
    var arr = Array(repeating: 1, count: 2 * n + 1)
    arr[1] = 0
    
    for i in 2...2*n {
        if arr[i] == 0 { continue }
        
        for j in stride(from: 2 * i, through: 2 * n, by: i) {
            arr[j] = 0
        }
    }
    
    var cnt = 0
    for i in n+1...2*n {
        if arr[i] == 1 {
            cnt += 1
        }
    }
    print(cnt)  
}
