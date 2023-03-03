func solution(_ n:Int64) -> Int64 {
    var tmp = Array(String(n))
    var arr = tmp.map({ Int(String($0))! })
    arr.sort()
    arr.reverse()
    
    var res = Int64(arr.map({String($0)}).joined(separator: ""))!
    return res
}
