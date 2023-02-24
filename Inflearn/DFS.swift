func infDFS(_ n: Int) {
    // pre-order
//    func DFS(_ n: Int) {
//        if n > 7 { return }
//        print(n, terminator: " ")
//        DFS(n*2)
//        DFS(n*2 + 1)
//    }
    
    // in-order
//    func DFS(_ n: Int) {
//        if n > 7 { return }
//        DFS(n*2)
//        print(n, terminator: " ")
//        DFS(n*2 + 1)
//    }
    
    // post-order
    func DFS(_ n: Int) {
        if n > 7 { return }
        DFS(n*2)
        DFS(n*2 + 1)
        print(n, terminator: " ")
    }
    DFS(n)
}
