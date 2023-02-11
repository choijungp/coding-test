import Foundation

let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let max = arr.max()!
let others = arr.filter({ $0 != max })

if others[0] + others[1] == max {
    print(1)
}
else if others[0] * others[1] == max {
    print(2)
}
else {
    print(3)
}
