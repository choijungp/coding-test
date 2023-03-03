import Foundation

let num = readLine()!.split(separator: " ").map({ Int($0)! })
let arr1 = Array(String(num[0])), arr2 = Array(String(num[1]))

var cnt = 0 
if arr1.count != arr2.count {
    print(cnt)
}
else {
    if arr1[0] == "8" && arr2[0] == "8" {
        cnt += 1
    }
    for i in 1..<arr1.count {
        if Int(String(arr2[i-1]))! > Int(String(arr1[i-1]))! {
            break
        }
        if arr1[i] == "8" && arr2[i] == "8" {
            cnt += 1
        }
    }
    print(cnt)
}
