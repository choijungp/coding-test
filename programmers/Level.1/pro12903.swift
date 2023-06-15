func solution(_ s:String) -> String {
    let arr = Array(s)
    let half = s.count / 2
    var result:[String] = []
    if s.count % 2 == 0 {
        result.append(String(arr[half-1]))
    }
    result.append(String(arr[half]))
    return result.joined(separator: "")
}
