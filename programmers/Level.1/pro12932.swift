func solution(_ n:Int64) -> [Int] {
    var result: [Int] = []
    var num = Int(n)
    for i in 0..<String(n).count {
        result.append(num % 10)
        num /= 10
    }
    return result
}
