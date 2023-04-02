import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    var str = Array(readLine()!)
    var firstCh = [String]()
    firstCh.append(String(str[0]).uppercased())
    let res = firstCh + str[1...].map({ String($0) })
    print(res.joined(separator: ""))
}
