import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: n+1)
var result = [String]()

var idx = 1
var check = false
for _ in 0..<n {
    let num = Int(readLine()!)!
    
    /// push
    if arr[num] == 0 {
        for i in idx...num {
            if arr[i] == -1 { continue }
            arr[i] = 1
            result.append("+")
        }
        arr[num] = -1
        result.append("-")
        idx = num
    }
    
    /// pop
    else if arr[num] == 1 {
        for i in (num+1)...n {
            if arr[i] == 1 {
                check = true
            }
        }
        arr[num] = -1
        result.append("-")
    }
    
    if check { break }
}
if check { print("NO") }
else {
    for ch in result {
        print(ch)
    }
}
