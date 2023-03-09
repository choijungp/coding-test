import Foundation

let input = readLine()!.split(separator: " ").map({ Int($0)! })
let a = input[0], b = input[1], c = input[2]

func dfs(_ n: Int) -> Int {
    if n == 0 { return 1 }
    
    if n % 2 == 0 {
        let num = dfs(n/2)
        return num % c * num % c
    }
    else {
        let num = dfs((n-1) / 2)
        return num % c * num % c * a % c
    }
}
print(dfs(b))
