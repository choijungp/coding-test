import Foundation

func solution(_ numbers:[Int]) -> Int {
    var num = numbers.reduce(0, +)
    
    return 45 - num
}
