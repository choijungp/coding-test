func solution(_ s:String) -> String {
    var numbers = s.split(separator: " ").map({ Int($0)! })
    numbers.sort()
    let result = "\(String(numbers[0])) \(String(numbers[numbers.count - 1]))"
    return result
}
