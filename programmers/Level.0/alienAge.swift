import Foundation

func solution(_ age:Int) -> String {
    var result = ""
    let tmp = String(age).map { Int(String($0))! + 97 }
    
    for num in tmp {
        result.append(String(UnicodeScalar(num)!))
    }
    
    return result
}
