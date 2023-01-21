import Foundation

while true {
    let input = readLine()!
    if input == "." { break }
    
    var stack = [Character]()
    var check = 0
    for i in input {
        if i == "(" {
            stack.append(i)
        }
        else if i == ")" {
            if stack.isEmpty {
                check = 1
                break
            }
            if stack.last! != "(" {
                break
            }
            stack.removeLast()
        }
        else if i == "[" {
            stack.append(i)
        }
        else if i == "]" {
            if stack.isEmpty {
                check = 1
                break
            }
            if stack.last! != "[" {
                break
            }
            stack.removeLast()
        }
    }
    if stack.isEmpty && check == 0 {
        print("yes")
    }
    else {
        print("no")
    }
}
