let ab = readLine()!.split(separator: " ").map { Int($0)! }
let c = Int(readLine()!)!

var h = c / 60
var m = c % 60

h += ab[0]
m += ab[1]

if m >= 60 {
    h += 1
    m -= 60
}

if h >= 24 {
    h -= 24
}
print("\(h) \(m)")
