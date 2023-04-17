import Foundation

var maxPeople = 0, people = 0
for _ in 0..<4 {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    people -= input[0]
    people += input[1]
    
    if people > maxPeople {
        maxPeople = people
    }
}
print(maxPeople)
