func solution(_ arr:[Int]) -> Double {
    var sum = 0
    for num in arr {
        sum += num
    }
    return Double(sum) / Double(arr.count)
}
