import Foundation

let input = Int(readLine()!)!
var words: [String] = []
for _ in 0..<input {
    let word = readLine()!
    words.append(word)
}
words = Array(Set(words)).sorted()
words.sort(by: { $0.count < $1.count })

for word in words {
    print(word)
}
