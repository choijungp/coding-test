import Foundation

let input = Int(readLine()!)!
var numbers: [Int] = []
var dict = [Int: Int]()
var sum = 0
for _ in 0..<input {
    let num = Int(readLine()!)!
    numbers.append(num)
    sum += num
    
    dict[num, default: 0] += 1
}
numbers = numbers.sorted()

print(Int(round(Double(sum) / Double(input))))
print(numbers[input / 2])

if dict.filter({ $0.value == dict.values.max()! }).keys.count > 1 {
    print(Array(dict.filter({ $0.value == dict.values.max()! }).keys).sorted()[1])
}
else {
    print(dict.filter({ $0.value == dict.values.max()! }).keys.first!)
}
print(numbers.max()! - numbers.min()!)
