import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result: [Int] = []
    
    if direction == "right" {
        result.append(numbers[numbers.count - 1])
        for i in 0..<numbers.count - 1 {
            result.append(numbers[i])
        }
    }
    else {
        for i in 0..<numbers.count - 1 {
            result.append(numbers[i+1])
        }
        result.append(numbers[0])
    }
    return result
}
