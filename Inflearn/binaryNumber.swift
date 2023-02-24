func solInf(_ n: Int) {
    var result: [Int] = []
    func binary(_ n: Int) {
        if n == 0 {
            return
        }
        else {
            binary(n / 2)
            result.append(n % 2)
        }
    }
    binary(n)
    print(result.map({ String($0) }).joined(separator: ""))
}
