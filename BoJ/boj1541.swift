import Foundation

let input = readLine()!
let separators = CharacterSet(charactersIn: "+-")
let numbers = input.components(separatedBy: separators).map({ Int($0)! })
var operators = [String]()
for ch in Array(input) {
    if ch == "+" || ch == "-" {
        operators.append(String(ch))
    }
}

var tmp = numbers[0]
var tmpNum = [Int]()
for i in 0..<operators.count {
    if operators[i] == "+" {
        tmp += numbers[i+1]
    }
    else {
        tmpNum.append(tmp)
        tmp = numbers[i+1]
    }
}
tmpNum.append(tmp)
var result = tmpNum[0]
for i in 1..<tmpNum.count {
    result -= tmpNum[i]
}
print(result)
