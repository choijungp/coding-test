import Foundation

var result = 0
for i in 0..<3 {
    if i == 0 {
        result += getValue(readLine()!) * 10
    }
    else if i == 1 {
        result += getValue(readLine()!)
    }
    else {
        result *= getMulti(readLine()!)
    }
}

func getValue(_ color: String) -> Int {
    switch color {
        case "black":
            return 0
        case "brown":
            return 1
        case "red":
            return 2
        case "orange":
            return 3
        case "yellow":
            return 4
        case "green":
            return 5
        case "blue":
            return 6
        case "violet":
            return 7
        case "grey":
            return 8
        case "white":
            return 9
        default:
            return 1
    }
}

func getMulti(_ color: String) -> Int {
    switch color {
        case "black":
            return 1
        case "brown":
            return 10
        case "red":
            return 100
        case "orange":
            return 1000
        case "yellow":
            return 10000
        case "green":
            return 100000
        case "blue":
            return 1000000
        case "violet":
            return 10000000
        case "grey":
            return 100000000
        case "white":
            return 1000000000
        default:
            return 1
    }
}
print(result)
