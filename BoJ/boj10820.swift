import Foundation

func lowerUpper(_ ch: Character) -> Int {
    if ch.asciiValue! > 64 && ch.asciiValue! < 91 {
        return 1
    }
    return 0
}
while let input = readLine() {
    let arr = Array(input)
    var num1 = 0, num2 = 0, num3 = 0, num4 = 0
    for ch in arr {
        if ch == " " {
            num4 += 1
        }
        else if ch.isNumber {
            num3 += 1
        }
        else {
            if lowerUpper(ch) == 0 {
                num1 += 1
            }
            else {
                num2 += 1
            }
        }
    }
    print(num1, num2, num3, num4)
}
