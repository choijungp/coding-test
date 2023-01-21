let cnt = Int(readLine()!)!

for i in 0..<cnt {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    print("Case #\(i+1): \(arr[0]) + \(arr[1]) = \(arr[0] + arr[1])")
}
