var maxNum = -1000000
var minNum = 1000000

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }

for num in arr {
    if num > maxNum {
        maxNum = num
    }
    if num < minNum {
        minNum = num
    }
}

print("\(minNum) \(maxNum)")
