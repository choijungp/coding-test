import Foundation

let num = Int(readLine()!)!

for _ in 0..<num {
    let input = readLine()!.split(separator: " ")
    
    for i in 0..<input[1].count {
        for _ in 0..<Int(input[0])!{
            print("\(Array(input[1])[i])", terminator: "")
        }
    }
    print("")
}
