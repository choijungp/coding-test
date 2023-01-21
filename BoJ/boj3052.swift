var numbers: [Int] = []

for i in 0..<10 {
    let num = Int(readLine()!)!
    numbers.append(num % 42)
}

numbers = Array(Set(numbers))
print(numbers.count)
