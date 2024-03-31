import Foundation

let n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
var check = Array(repeating: Array(repeating: 1, count: n), count: n)
var rainSet: [Int] = [], maxRain = 0
let dx: [Int] = [-1, 1, 0, 0]
let dy: [Int] = [0, 0, -1, 1]
for i in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
    for j in 0..<n {
        arr[i][j] = input[j]
        maxRain = max(maxRain, input[j])
    }
}

for i in 0..<maxRain {
    rainSet.append(i)
}

var maxCnt = 0
for rain in rainSet {
    maxCnt = max(findSafeArea(num: rain), maxCnt)
}
print(maxCnt)

func findSafeArea(num: Int) -> Int {
    check = Array(repeating: Array(repeating: 1, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] <= num {
                check[i][j] = -1
            }
        }
    }
    
    var cnt = 0
    for i in 0..<n {
        for j in 0..<n {
            if check[i][j] == 1 {
                changeArea(x: i, y: j)
                cnt += 1
            }
        }
    }
    return cnt
}

func changeArea(x: Int, y: Int) {
    for i in 0..<4 {
        if x+dx[i] < 0 || x+dx[i] >= n || y+dy[i] < 0 || y+dy[i] >= n { continue }
        
        if check[x+dx[i]][y+dy[i]] == 1 {
            check[x+dx[i]][y+dy[i]] = 0
            changeArea(x: x+dx[i], y: y+dy[i])
        }
    }
}
