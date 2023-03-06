func solution(_ x:Int) -> Bool {
    let str = String(x)
    var tmp = 0
    for num in Array(str) {
        tmp += Int(String(num))!
    }
    return (x % tmp == 0 ? true : false)
}
