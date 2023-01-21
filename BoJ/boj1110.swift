let n = Int(readLine()!)!
var num = n
var cnt = 0

repeat {
    let l = num % 10
    let r = ((num / 10) + (num % 10)) % 10
    
    num = l * 10 + r
    
    cnt += 1
} while (num != n)

print(cnt)
