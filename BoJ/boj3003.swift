let array = readLine()!.split(separator: " ").map { Int($0)! }
var chess = [1, 1, 2, 2, 2, 8]

for i in 0..<6 {
    print("\(chess[i] - array[i])", terminator:" ")
}
