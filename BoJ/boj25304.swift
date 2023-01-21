let total = Int(readLine()!)!
let cnt = Int(readLine()!)!
var price = 0

for i in 0..<cnt {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    price += arr[0] * arr[1]
}

if price == total {
    print("Yes")
}
else {
    print("No")
}
