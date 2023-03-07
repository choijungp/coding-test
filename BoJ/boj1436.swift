import Foundation

let n = Int(readLine()!)!
var cnt = 0, num = 665
while true {
    num += 1
    let strNum = String(num)
    var check = 0
    
    for ch in strNum {
        if ch == "6" {
            check += 1
        }
        else {
            check = 0
        }
        if check == 3 {
            cnt += 1
        }
    }
    
    if cnt == n {
        print(num)
        break
    }
}
