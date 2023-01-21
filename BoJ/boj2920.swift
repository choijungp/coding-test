import Foundation 

let input = readLine()!.split(separator: " ").map({ Int($0)! })
let scale = [8, 7, 6, 5, 4, 3, 2, 1]

if input == scale {
    print("descending")
}
else if input == scale.sorted() {
    print("ascending")
}
else {
    print("mixed")
}
