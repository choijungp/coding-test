import Foundation

let nk = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nk[0]
let k = nk[1]

func factorial(_ start: Int, _ end: Int) -> Int {
    var sum = 1
    for i in start...end {
        sum *= i
    }
    return sum
}
if n == k {
    print(1)
}
else {
    print(factorial(k+1, n) / factorial(1, n-k))
}
