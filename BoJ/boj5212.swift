import Foundation

let rc = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
let r = rc[0], c = rc[1]

var island: [String] = []
let dx: [Int] = [-1, 1, 0, 0]
let dy: [Int] = [0, 0, -1, 1]

for _ in 0..<r {
    island.append(readLine()!)
}

var startX: Int = c, endX: Int = 0
var startY: Int = r, endY: Int = 0
var result: [String] = []
for i in 0..<r {
    var tmpString: String = ""
    let tmpArr = Array(island[i])
    
    for j in 0..<c {
        var cnt = 0
        if tmpArr[j] == "X" {
            for k in 0..<4 {
                let tmpX = i+dx[k], tmpY = j+dy[k]
                if tmpX < 0 || tmpX >= r || tmpY < 0 || tmpY >= c {
                    cnt += 1
                    continue
                }
                if Array(island[tmpX])[tmpY] == "." {
                    cnt += 1
                    continue
                }
            }
            
            if cnt >= 3 {
                tmpString.append(".")
            } else {
                tmpString.append("X")
            }
        } else {
            tmpString.append(".")
        }
    }
    
    let arr = Array(tmpString)
    if arr.contains("X") {
        startX = min(startX, arr.firstIndex(of: "X") ?? 0)
        endX = max(endX, arr.lastIndex(of: "X") ?? 0)
        
        startY = min(startY, i)
        endY = max(endY, i)
    }
    result.append(tmpString)
}

for i in startY...endY {
    let tmpArr = Array(result[i])
    var tmp: String = ""
    for j in startX...endX {
        tmp.append(tmpArr[j])
    }
    print(tmp)
}
