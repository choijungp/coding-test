import Foundation

let input = Array(readLine()!.uppercased())
var dict = [String : Int]()

input.forEach { dict[String($0), default: 0] += 1 }
let max = dict.values.max()!

if dict.filter({ $0.value == max }).count > 1 {
    print("?")
}
else {
    let sortedDict = dict.sorted { $0.value > $1.value }
    print(sortedDict.first!.key)
}
