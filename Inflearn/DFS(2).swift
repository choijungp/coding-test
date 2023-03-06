func infDFS2(_ numbers: [Int]) {
    let total = numbers.reduce(0, +)
    func DFS(_ L: Int, _ sum: Int) {
        if sum > total / 2 {
            return
        }
        if L == numbers.count - 1 {
            if sum == (total - sum) {
                print("YES")
                return
            }
        }
        else {
            DFS(L+1, sum + numbers[L + 1])
            DFS(L+1, sum)
        }
    }
    DFS(0, 0)
}
// infDFS2([1, 3, 5, 6, 7, 10]) // YES
// infDFS2([1, 2, 5, 6, 7, 10])
