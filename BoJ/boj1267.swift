import Foundation

let n = Int(readLine()!)!
let calls = readLine()!.split(separator: " ").map({ Int($0)! })

var cntY = 0, cntM = 0
for call in calls {
    cntY += ((call / 30) + 1) * 10
    cntM += ((call / 60) + 1) * 15
}

if cntY > cntM {
    print("M \(cntM)")
}
else if cntY < cntM {
    print("Y \(cntY)")
}
else {
    print("Y M \(cntY)")
}
