import Foundation

let num = Int(readLine()!)!
var result = 0
for i in 1...num {
    var sum = i
    for j in String(i) {
        sum += Int(String(j))!
    }
    
    if sum == num {
        result = i
        break
    }
}

print(result)
