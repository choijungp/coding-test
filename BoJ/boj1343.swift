import Foundation

let input = readLine()!
let strs = input.split(separator: ".")
var result = [String]()

if strs.filter({ $0.count % 2 != 0 }).count > 0 {
    print(-1)
}
else {
    for i in 0..<strs.count {
        var str = Array(strs[i])
        var tmp: [String] = []
        
        var len = str.count
        while len > 0 {
            if len >= 4 {
                tmp.append("AAAA")
                len -= 4
            }
            else {
                tmp.append("BB")
                len -= 2
            }
        }
        result.append(tmp.joined())
    }
    
    let str = Array(input)
    var idx1 = 0, idx2 = 0
    while idx1 < str.count {
        if str[idx1] == "X" {
            print(result[idx2], terminator: "")
            idx1 += result[idx2].count
            idx2 += 1
        }
        else {
            print(str[idx1], terminator: "")
            idx1 += 1
        }
    }
}
