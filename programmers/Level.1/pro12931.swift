import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = String(n).map{ String($0)}.reduce(0){ $0 + Int($1)! }
    return answer
}
