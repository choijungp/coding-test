import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let xy = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
    let x1 = xy[0], y1 = xy[1], x2 = xy[2], y2 = xy[3]
    
    let n = Int(readLine()!)!
    var cnt = 0
    for _ in 0..<n {
        let xyr = readLine()!.components(separatedBy: " ").map({ Int($0) ?? 0 })
        let x = xyr[0], y = xyr[1], r = xyr[2]
        
        let dis1 = (x1-x) * (x1-x) + (y1-y) * (y1-y)
        let dis2 = (x2-x) * (x2-x) + (y2-y) * (y2-y)
        let radius = r * r
        
        if dis1 < radius && dis2 < radius {
            continue
        }
        
        if dis1 < radius {
            cnt += 1
        }
        if dis2 < radius {
            cnt += 1
        }
    }
    print(cnt)
}
