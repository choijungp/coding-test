let num = Int(readLine()!)!

for i in 0..<num {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    print("\(ab[0] + ab[1])")
}
