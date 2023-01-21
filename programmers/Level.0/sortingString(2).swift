import Foundation

func solution(_ my_string:String) -> String {
    var result = my_string.lowercased()
    
    return String(result.sorted())
}
