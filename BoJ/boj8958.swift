let input = Int(readLine()!)!

for _ in 0..<input {
    var sum = 0
    var total = 0
    
    let ox = Array(readLine()!)
    for ch in ox {
        if ch == "O" {
            sum += 1
            total += sum
        }
        else {
            sum = 0
        }
    }
    print(total)
}
