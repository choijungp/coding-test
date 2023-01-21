import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!
    var stack = [Character]()
    var check = true
    
    for i in input {
        if i == "(" {
            stack.append(i)
        }
        else {
            if stack.isEmpty {
                check = false
                break
            }
            else {
                stack.removeLast()
            }
        }
    }
    
    if check {
        if stack.isEmpty {
            print("YES")
        }
        else {
            print("NO")
        }
    }
    else {
        print("NO")
    }
}
