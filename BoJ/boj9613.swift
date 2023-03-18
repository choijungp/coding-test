import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}
let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    var arr = [Int]()
    for i in 1..<input.count {
        arr.append(input[i])
    }
    var sum = 0
    for i in 0..<input[0] {
        for j in (i+1)..<input[0] {
            sum += gcd(arr[i], arr[j])
        }
    }
    print(sum)
}
