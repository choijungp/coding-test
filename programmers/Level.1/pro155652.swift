import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var resultArr = [String]()
    var result: String = ""
    let skipArr = Array(skip).map({ String($0) })
    
    for ch in Array(s) {
        var tmpArr = [String]()
        var asciiInt = Int(exactly: Character(String(ch)).asciiValue!)! + 1
        while tmpArr.count < index {
            if asciiInt > 122 {
                asciiInt = 96 + (asciiInt - 122)
            }
            let tmpCh = String(UnicodeScalar(asciiInt)!)
            if !skipArr.contains(tmpCh) {
                tmpArr.append(tmpCh)
            }
            asciiInt += 1
        }
        resultArr.append(tmpArr.last!)
    }
    result = resultArr.joined(separator: "")
    return result
}
