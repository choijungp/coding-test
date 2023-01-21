import Foundation

var x = Int(readLine()!)!
var i = 1
while x > i {
    x -= i
    i += 1
}

if i % 2 == 0 {
    print("\(x)/\(i - x + 1)")
}
else {
    print("\(i - x + 1)/\(x)")
}
