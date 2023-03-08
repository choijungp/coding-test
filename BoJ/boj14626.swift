import Foundation

let arr = Array(readLine()!)
var sum = 0, check = 1
for i in 0..<12 {
    if arr[i] != "*" {
        if i % 2 == 0 {
            sum += Int(String(arr[i]))!
        }
        else {
            sum += 3 * Int(String(arr[i]))!
        }
    }
    else {
        if i % 2 == 1 {
            check = 3
        }
    }
}
sum += Int(String(arr[12]))!
var tmp = 0
for i in 1...9 {
    if check == 1 {
        if (sum + i) % 10 == 0 {
            tmp = i
            break
        }
    }
    else {
        if (sum + i * 3) % 10 == 0 {
            tmp = i
            break
        }
    }
}
print(tmp)
