import Foundation

while true {
    let input = readLine()!
    
    if input == "0" { break }
    var arr: [Int] = []
    for i in input {
        arr.append(Int(String(i))!)
    }
    
    let reversedArr = arr.reversed()
    if arr == Array(reversedArr) { 
        print("yes") 
    }
    else { 
        print("no") 
    }
}
