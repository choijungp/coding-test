import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
if (nm[0] * 100) >= nm[1] {
    print("Yes")
}
else {
    print("No")
}
