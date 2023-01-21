import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = -100000000
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            if numbers[i]*numbers[j] > result {
                result = numbers[i]*numbers[j]
            }
        }
    }
    
    return result
}
