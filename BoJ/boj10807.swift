let num = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let target = Int(readLine()!)!
var cnt = 0

for number in arr {
    if number == target {
        cnt += 1
    }
}
print(cnt)
