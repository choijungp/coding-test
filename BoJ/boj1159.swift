import Foundation

var players = [String : Int]()
let n = Int(readLine()!)!
for _ in 0..<n {
    let player = Array(readLine()!)
    players[String(player[0]), default: 0] += 1
}
let canPlayers = players.filter({ $0.value >= 5 })
if canPlayers.count > 0 {
    var res = [String]()
    for player in canPlayers {
        res.append(player.key)
    }
    res.sort()
    print(res.joined(separator: ""))
}
else {
    print("PREDAJA")
}
