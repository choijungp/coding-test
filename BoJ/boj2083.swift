import Foundation

while true {
    let input = readLine()!.split(separator: " ")
    if input[0] == "#" { break }
    
    if Int(input[1])! > 17 {
        print("\(input[0]) Senior")
    }
    else {
        if Int(input[2])! >= 80 {
            print("\(input[0]) Senior")
        }
        else {
            print("\(input[0]) Junior")
        }
    }
}
