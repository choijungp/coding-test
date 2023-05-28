func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int] = []
    var num = x
    for i in 0..<n {
        result.append(num)
        num += x
    }
    return result.map({ Int64($0) })
}
