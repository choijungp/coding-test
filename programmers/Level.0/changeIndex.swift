import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    let ch1 = Array(my_string)[num1]
    let ch2 = Array(my_string)[num2]
    
    var result = Array(my_string)
    result[num2] = ch1
    result[num1] = ch2
    
    return String(result)
}
