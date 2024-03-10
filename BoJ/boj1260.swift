import Foundation

let nmv = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
let n = nmv[0], m = nmv[1], v = nmv[2]
var arr = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
var check = Array(repeating: false, count: n)

// input
for _ in 0..<m {
    let input = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
    arr[input[0]][input[1]] = 1
    arr[input[1]][input[0]] = 1
}

// DFS
var dfsResult: [Int] = []
func dfs(_ now: Int) {
    if !check[now-1] {
        dfsResult.append(now)
        check[now-1] = true
    }
    
    for i in 1...n {
        if !check[i-1] && arr[now][i] == 1 {
            dfs(i)
        }
    }
}
dfs(v)
print(dfsResult.map({ String($0) }).joined(separator: " "))

// BFS
check = Array(repeating: false, count: n)
var bfsResult: [Int] = []
var tmpQueue: [Int] = [v]
func bfs(_ now: Int) {
    if !check[now-1] {
        bfsResult.append(now)
        check[now-1] = true
    }
    
    for i in 1...n {
        if !check[i-1] && arr[now][i] == 1 {
            tmpQueue.append(i)
        }
    }
    tmpQueue.removeFirst()
}

while !tmpQueue.isEmpty {
    bfs(tmpQueue.first ?? 0)
}
print(bfsResult.map({ String($0) }).joined(separator: " "))
