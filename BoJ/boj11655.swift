import Foundation

let arr = Array(readLine()!)
var result = [String]()

for ch in arr {
    if ch == " " {
        result.append(" ")
    }
    else if ch.isNumber {
        result.append(String(ch))
    }
    else {
        var asciiInt = ch.asciiValue!
        asciiInt += 13
        if ch.isLowercase {
            if asciiInt > 122 {
                asciiInt -= 26
            }
        }
        else {
            if asciiInt > 90 {
                asciiInt -= 26
            }
        }
        result.append(String(UnicodeScalar(asciiInt)))
    }
}
print(result.joined(separator: ""))
