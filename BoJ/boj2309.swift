import Foundation

var people: [Int] = []
for _ in 0..<9 {
    let height = Int(readLine()!)!
    people.append(height)
}
people.sort()

let sum = people.reduce(0, +)
var idx1 = 0, idx2 = 0
for i in 0..<9 {
    for j in i+1..<9 {
        if sum - (people[i] + people[j]) == 100 {
            idx1 = i
            idx2 = j
            break
        }
    }
}

for i in 0..<9 {
    if i == idx1 || i == idx2 { continue }
    print(people[i])
}
