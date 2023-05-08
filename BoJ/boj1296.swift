import Foundation

let name = readLine()!
let cntL = Array(name).filter({ $0 == "L" }).count
let cntO = Array(name).filter({ $0 == "O" }).count
let cntV = Array(name).filter({ $0 == "V" }).count
let cntE = Array(name).filter({ $0 == "E" }).count

let n = Int(readLine()!)!
var max = -100
var winners: [String] = []
for _ in 0..<n {
    let team = readLine()!
    let tmpL = cntL + Array(team).filter({ $0 == "L" }).count
    let tmpO = cntO + Array(team).filter({ $0 == "O" }).count
    let tmpV = cntV + Array(team).filter({ $0 == "V" }).count
    let tmpE = cntE + Array(team).filter({ $0 == "E" }).count
    
    let score = ((tmpL + tmpO) * (tmpL + tmpV) * (tmpL + tmpE) * (tmpO + tmpV) * (tmpO + tmpE) * (tmpV + tmpE)) % 100
    if score > max {
        winners.removeAll()
        max = score
        winners.append(team)
    }
    else if score == max {
        winners.append(team)
    }
}
winners.sort()
print(winners[0])
