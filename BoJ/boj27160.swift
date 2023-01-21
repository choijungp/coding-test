import Foundation

let n = Int(readLine()!)!
var hg = [String: Int]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    hg[String(input[0]), default: 0] += Int(String(input[1]))!
}

if hg.values.filter({ $0 == 5 }).count > 0 {
    print("YES")
}
else {
    print("NO")
}
