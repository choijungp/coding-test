import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    for i in input {
        var reversedInput = String(i.reversed())
        print(reversedInput, terminator: " ")
    }
    print("")
}
