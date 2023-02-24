func infDFS1(_ n: Int) {
    var ch = Array(repeating: 0, count: n+1)
    func DFS(_ v: Int) {
        if v > n {
            for i in 1...n {
                if ch[i] == 1 {
                    print(i, terminator: " ")
                }
            }
            print("")
        }
        else {
            ch[v] = 1
            DFS(v+1)
            ch[v] = 0
            DFS(v+1)
        }
    }
    DFS(1)
}

// infDFS1(3)
