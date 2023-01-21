import Foundation

let t = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 31), count: 31)
for _ in 0..<t {
    let n = readLine()!.split(separator: " ").map({ Int($0)! })
    print(dp(n[1], n[0]))
}

func dp(_ a: Int, _ b: Int) -> Int {
    if a == b || b == 0 { return 1 }
    
    if arr[a][b] != 0 { 
        return arr[a][b]
    }
    
    arr[a][b] = dp(a-1, b-1) + dp(a-1, b)
    return arr[a][b]
}
