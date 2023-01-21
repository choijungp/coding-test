import Foundation

var input = readLine()!
let cAlpha = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for alpha in cAlpha {
    input = input.replacingOccurrences(of: alpha, with: "1")
}
print(input.count)
