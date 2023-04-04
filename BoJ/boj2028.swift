import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    var arr = Array(String(n * n))
    arr.reverse()
    let tmp = arr[0..<String(n).count]
    let res = tmp.reversed().map({ String($0) }).joined(separator: "")
    if n == Int(res)! {
        print("YES")
    }
    else {
        print("NO")
    }
}
