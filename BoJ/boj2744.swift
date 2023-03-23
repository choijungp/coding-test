import Foundation

let input = Array(readLine()!)
var result = [String]()

for ch in input {
    if ch.isLowercase {
        result.append(String(ch).uppercased())
    }
    else {
        result.append(String(ch).lowercased())
    }
}
print(result.joined(separator: ""))
