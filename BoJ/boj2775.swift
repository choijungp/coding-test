import Foundation

let num = Int(readLine()!)!

for _ in 0..<num {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var apart = Array(repeating: Array(repeating: 0, count: n), count : k+1)
    for i in 1...n {
        apart[0][i-1] = i
    }
    
    for i in 1...k {
        for j in 0..<n {
            apart[i][j] = apart[i-1][0...j].reduce(0, +)
        }
    }
    
    print(apart[k][n-1])
}
