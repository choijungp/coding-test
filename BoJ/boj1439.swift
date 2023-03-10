import Foundation

let arr = Array(readLine()!)
var cntZero = 0, cntOne = 0
var flag = "0"

if arr[0] == "0" {
    cntOne += 1
}
else {
    cntZero += 1
    flag = "1"
}

for num in arr {
    if String(num) != flag {
        if num == "0" {
            cntOne += 1
        }
        else {
            cntZero += 1
        }
        flag = String(num)
    }
}
print(min(cntZero, cntOne))
