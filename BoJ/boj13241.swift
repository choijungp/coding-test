import Foundation

let num = readLine()!.split(separator: " ").map({ Int($0)! })
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}
print(num[0] * num[1] / gcd(num[0], num[1]))
