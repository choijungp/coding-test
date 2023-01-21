import Foundation

func solution(_ array:[Int]) -> Int {
    var cnt = 0
    
    for number in array {
        cnt += Array(String(number)).filter { $0 == "7" }.count
    }
    return cnt
}
