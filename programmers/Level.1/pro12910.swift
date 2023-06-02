func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    for num in arr.sorted() {
        if num % divisor == 0 {
            result.append(num)
        }
    }
    if result.count == 0 {
        result.append(-1)
    }
    return result
}
