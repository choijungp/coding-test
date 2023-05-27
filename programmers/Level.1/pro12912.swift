func solution(_ a:Int, _ b:Int) -> Int64 {
    var result = 0
    let maxNum = max(a, b), minNum = min(a, b)
    for i in minNum...maxNum {
        result += i
    }
    return Int64(result)
}
