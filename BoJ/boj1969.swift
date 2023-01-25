import Foundation

let nm = readLine()!.split(separator: " ").map({ Int($0)! })
let n = nm[0], m = nm[1]
var dnas: [String] = []
for _ in 0..<n {
    let dna = readLine()!
    dnas.append(dna)
}

var dna: [Character] = []
for i in 0..<m {
    var arr = [Character: Int]()
    for j in 0..<n {
        let tmp = Array(dnas[j])
        arr[tmp[i], default: 0] += 1
    }
    let max = arr.values.max()!
    let d = arr.filter({ $0.value == max }).sorted {
        $0.key < $1.key
    }
    dna.append(d.first!.key)
}
print(dna.map({ String($0) }).joined())

var sum = 0
for i in 0..<n {
    let str1 = Array(dnas[i])
    for j in 0..<m {
        if dna[j] != str1[j] {
            sum += 1
        }
    }
}
print(sum)
