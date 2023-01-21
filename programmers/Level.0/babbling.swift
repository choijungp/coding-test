import Foundation

let babblings: [String] = ["aya", "ye", "woo", "ma"]
func solution(_ babbling:[String]) -> Int {
    var result: Int = 0

    for i in 0..<babbling.count {
        if checkSubString(babbling[i]) {
            result = result + 1
        }
    }

    return result
}

func checkSubString(_ subBabbling: String) -> Bool {
    var result = false
    
    for i in 0..<babblings.count {
        if subBabbling.hasPrefix(babblings[i]) {
            if subBabbling.count == babblings[i].count {
                result = true
                break
            }
            
            let startIdx = subBabbling.index(subBabbling.startIndex, offsetBy: babblings[i].count)
            let subString = subBabbling[startIdx...]
            
            result = checkSubString(String(subString))
            
            if !result {
                break
            }
        }
    }
    return result
}
