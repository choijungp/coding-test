import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    var array = Array(Set(Array(my_string)))
    
    for ch in Array(my_string) {
        if array.contains(ch) {
            result.append(ch)
            
            if let idx = array.firstIndex(where: { $0 == ch }) {
                array.remove(at: idx)
            }
        }
    }
    
    return result
}
