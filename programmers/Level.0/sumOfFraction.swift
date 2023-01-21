import Foundation

func gcd(_ a: Int, _ b: Int) -> Int{
    if (b == 0) { return a }
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let num = lcm(num1, num2)
    var tmp =  [ denum1 * (num / num1) + denum2 * (num / num2), num]
    
    if gcd(tmp[0], tmp[1]) != 1 {
        return [tmp[0] / gcd(tmp[0], tmp[1]), tmp[1]/gcd(tmp[0], tmp[1]) ]
    } else {
        return tmp
    }
}
