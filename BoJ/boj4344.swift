import Foundation

let input = Int(readLine()!)!

for _ in 0..<input {
    var arr = readLine()!.split(separator: " ").map { Double($0)! }
    
    var sum = arr[1..<arr.count].reduce(0.0, +)
    var cnt = arr[1..<arr.count].filter { $0 > sum / arr[0] }.count
    
    print(String(format: "%.3f", (Double(cnt) / Double(arr[0])) * 100.00) + "%")
}
