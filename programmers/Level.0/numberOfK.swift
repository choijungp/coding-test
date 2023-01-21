import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    for i in i...j {
        let str = String(i)
        
        for ch in str {
            if String(ch) == String(k) {
                result += 1
            }
        }
    }
    return result
}
