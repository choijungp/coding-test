let nx = readLine()!.split(separator: " ").map { Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var cnt = 0

for num in arr {
    if num < nx[1] {
        print(num, terminator: " ")
    }
}
