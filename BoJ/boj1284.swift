import Foundation

while true {
    let house = readLine()!
    if house == "0" { break }
    var result = 0
    for num in house {
        result += 1
        if num == "0" {
            result += 4
        }
        else if num == "1" {
            result += 2
        }
        else {
            result += 3
        }
    }
    result += 1
    print(result)
}
