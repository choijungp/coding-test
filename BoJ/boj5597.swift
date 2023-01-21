var students = [Int](repeating: 0, count: 30)
for _ in 0..<28 {
    let num = Int(readLine()!)!
    students[num - 1] = 1
}

for i in 0..<30 {
    if students[i] != 1 {
        print(i+1)
    }
}
