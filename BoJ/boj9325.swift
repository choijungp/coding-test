import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let s = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var sum = s
    for _ in 0..<n {
        let pq = readLine()!.split(separator: " ").map({ Int($0)! })
        sum += pq[0] * pq[1]
    }
    print(sum)
}
