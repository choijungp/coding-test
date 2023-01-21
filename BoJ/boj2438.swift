let num = Int(readLine()!)!

for i in 1...num {
    for j in 0..<i {
        print("*", terminator: "")
    }
    print("")
}
