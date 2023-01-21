import Foundation

let num = Int(readLine()!)!
var sum = 0

for _ in 0..<num {
    let input = readLine()!
    var group : [Character] = []
    var frontChracter: Character = "!"
    var cnt = 0
    
    for ch in input {
        if (ch != frontChracter) && group.contains(ch) {
            break
        }
        
        if ch != frontChracter {
            group.append(ch)
            frontChracter = ch
        }
        cnt += 1
    }
    
    if cnt == input.count {
        sum += 1
    }
}
print(sum)
