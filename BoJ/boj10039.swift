import Foundation

var sum = 0
for _ in 0..<5 {
    var score = Int(readLine()!)!
    if score < 40 {
        score = 40
    }
    sum += score
}
print(sum / 5)
