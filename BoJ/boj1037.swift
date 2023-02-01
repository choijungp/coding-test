import Foundation

let cnt = Int(readLine()!)!
var primeNum = readLine()!.split(separator: " ").map({ Int($0)! })
primeNum.sort()

if cnt == 1 {
    print(primeNum[0] * primeNum[0])
}
else {
    print(primeNum[0] * primeNum[cnt - 1])
}
