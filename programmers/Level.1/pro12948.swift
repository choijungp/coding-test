func solution(_ phone_number:String) -> String {
    let length = phone_number.count - 4
    var result: [String] = []
    for i in 0..<phone_number.count {
        if i < length {
            result.append("*")
        } else {
            result.append(String(Array(phone_number)[i]))
        }
    }
    return result.joined(separator: "")
}
