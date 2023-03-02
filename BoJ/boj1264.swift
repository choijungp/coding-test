import Foundation

let vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
while true {
    let input = readLine()!
    if input == "#" { break }
    print(Array(input).map({ String($0) }).filter({ vowel.contains($0) }).count)
}
