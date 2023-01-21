import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}

let input = readLine()!.split(separator: " ").map({ Int($0)! })
print(gcd(input[0], input[1]))
print(input[0] * input[1] / gcd(input[0], input[1]))
