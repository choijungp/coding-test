func infDFS5(_ c: Int, _ arr: [Int]) {
    var result = 0
    let total = arr.reduce(0, +)
    func DFS(_ L: Int, _ sum: Int, _ tSum: Int) {
        if sum + (total - tSum) < result {
            return
        }
        if sum > c {
            return
        }
        if L == arr.count {
            result = max(result, sum)
        }
        else {
            DFS(L+1, sum + arr[L], tSum + arr[L])
            DFS(L+1, sum, tSum + arr[L])
        }
    }
    DFS(0, 0, 0)
    print(result)
}
// infDFS5(259, [81, 58, 42, 33, 61]) // 242
// infDFS5(4000, [27, 303, 251, 121, 50, 55, 123, 93, 360, 84, 353, 429, 765, 391, 562, 77]) // 3994
// infDFS5(3570, [27, 303, 251,121,50,55,123,93,360,84,353,429,765,391,562]) // 3568
