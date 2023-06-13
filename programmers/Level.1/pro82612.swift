import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    
    var nowPrice = price
    var total = 0
    for i in 1...count {
        total += nowPrice
        nowPrice += price
    }
    answer = Int64(total - money)
    if answer > 0 {
        return answer
    } else {
        return 0
    }
}
