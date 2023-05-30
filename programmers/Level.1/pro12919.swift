func solution(_ seoul:[String]) -> String {
    var result = ""
    if let index = seoul.firstIndex(where: {$0 == "Kim"}) {
	    result = "김서방은 \(index)에 있다"
    }
    return result
}
