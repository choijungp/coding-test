import Foundation

func solution(_ s:String) -> Bool
{
    var arr = Array(s)
    let cntP = arr.filter({ $0 == "p" || $0 == "P" }).count
    let cntY = arr.filter({ $0 == "y" || $0 == "Y" }).count
    
    return (cntP == cntY ? true : false)
}
