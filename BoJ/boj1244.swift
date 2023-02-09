import Foundation

let t = Int(readLine()!)!
var buttons = readLine()!.split(separator: " ").map({ Int($0)! })
var n = Int(readLine()!)!
for _ in 0..<n {
    let student = readLine()!.split(separator: " ").map({ Int($0)! })
    
    let male = student[0]
    let num = student[1]
    var idx = 1
    
    if male == 1 { // 남자
        for j in 1...t {
            if j % num == 0 {
                buttons[j-1] = buttons[j-1] == 0 ? 1 : 0
            }
        }
    }
    else { // 여자
        buttons[num-1] = buttons[num-1] == 0 ? 1 : 0
        while true {
            let before = num - idx
            let after = num + idx
            
            if before < 1 || after > t { break }
            if buttons[before-1] != buttons[after-1] { break }
            
            buttons[before-1] = buttons[before-1] == 0 ? 1 : 0
            buttons[after-1] = buttons[after-1] == 0 ? 1 : 0
            idx += 1
        }
    }
}

for i in 0..<t {
    if i != 0 && i % 20 == 0 {
        print("")
    }
    print(buttons[i], terminator: " ")
}
