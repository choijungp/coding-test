func solution(_ num:Int) -> Int {
    var n = num
    var cnt = 0
    while cnt < 500 {
        if n == 1 { break }
        else if n % 2 == 0 {
            n /= 2
        }
        else {
            n = n * 3 + 1
        }
        cnt += 1
    }
    return (cnt == 500 ? -1 : cnt)
}
