func solution(_ n:Int) -> String {
    var result:[String] = []
    for i in 0..<n/2 {
        result.append("수박")
    }
    if n % 2 == 1 {
        result.append("수")
    }
    return result.joined(separator: "")
}
