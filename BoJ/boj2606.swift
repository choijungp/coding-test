import Foundation

let computer = Int(readLine()!)!
let n = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: [], count: computer + 1)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    arr[input[0]].append(input[1])
    arr[input[1]].append(input[0])
}

func bfs(_ a: Int) -> Int {
    var check = Array(repeating: false, count: computer + 1)
    check[a] = true
    var queue = [a]
    var total = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        total += 1
        
        for next in arr[current] {
            if !check[next] {
                check[next] = true
                queue.append(next)
            }
        }
    }
    return total - 1
}

print(bfs(1))
