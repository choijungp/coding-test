import Foundation

var arr: [Int] = []
for _ in 0..<5{
    let num = Int(readLine()!)!
    arr.append(num)
}
arr = arr.sorted()

print(arr.reduce(0, +) / 5)
print(arr[2])
