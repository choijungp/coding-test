import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let nm = readLine()!.split(separator: " ").map({ Int($0)! })
    let arrA = readLine()!.split(separator: " ").map({ Int($0)! })
    var arrB = readLine()!.split(separator: " ").map({ Int($0)! })
    arrB.sort()
    
    var cnt = 0
    for num in arrA {
        for i in 0..<nm[1] {
            if arrB[i] < num {
                cnt += 1
            }
        }
    }
    print(cnt)
}
