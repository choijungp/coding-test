import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d
    arr.sort()
    var now = 0, result = 0
    for num in arr {
        now += num
        if now <= budget {
            result += 1
        } else {
            break
        }
    }
    return result
}
