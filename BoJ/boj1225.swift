import Foundation

let ab = readLine()!.split(separator: " ")
let a = Array(ab[0]), b = Array(ab[1])
var sum = 0
for i in 0..<a.count {
    let intA = Int(String(a[i]))!
    for j in 0..<b.count {
        let intB = Int(String(b[j]))!
        sum += intA * intB
    }
}
print(sum)
