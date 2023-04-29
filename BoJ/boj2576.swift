import Foundation

var sum = 0, min = 101
for _ in 0..<7 {
    let n = Int(readLine()!)!
    if n % 2 != 0 {
        sum += n
        if n < min {
            min = n
        }
    }
}
if sum > 0 {
    print(sum)
    print(min)
}
else {
    print(-1)
}
