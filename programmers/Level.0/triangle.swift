import Foundation

func solution(_ sides:[Int]) -> Int {
    let minNum = sides.min()!
    
    return 2 * minNum - 1
}
