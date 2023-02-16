import Foundation

func solution(_ n:Int) -> Int {
    var result = n-1
    for i in 2...(n-2) {
        if (n-1) % i == 0 {
            result = i
            break
        }
    }
    return result
}
