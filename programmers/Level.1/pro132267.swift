import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var coke = n, result = 0
    while coke >= a {
        result += (coke / a) * b
        coke = coke - (coke / a) * a + (coke / a) * b
    }
    return result
}
