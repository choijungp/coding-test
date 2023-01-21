import Foundation

let n = Int(readLine()!)!
var arr = [(Int, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    arr.append((input[0], input[1]))
}
arr.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    else {
        return $0.1 < $1.1
    }
}

arr.forEach {
    print($0.0, $0.1)
}
