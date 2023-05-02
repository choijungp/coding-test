import Foundation

var n = Int(readLine()!)!
var k = 1, cnt = 0
while n != 0 {
    if k > n {
        k = 1
    }
    n -= k
    k += 1
    cnt += 1
}
print(cnt)
