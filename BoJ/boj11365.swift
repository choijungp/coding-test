import Foundation

while true {
    let input = readLine()!
    if input == "END" { break }
    var arr = Array(input)
    arr.reverse()
    print(arr.map({ String($0) }).joined(separator: ""))
}
