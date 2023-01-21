import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    var n = Int(readLine()!)!
    var arr: [Int] = []
    
    while n != 1 {
        arr.append(n % 2)
        n /= 2
    }
    arr.append(1)
    
    for i in 0..<arr.count {
        if arr[i] == 1 {
            print(i)
        }
    }
}
