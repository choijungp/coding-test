import Foundation

let input = readLine()!.split(separator: " ").map({ Int($0)! })
let sum = input[0], sub = input[1]

if sub > sum {
    print(-1)
}
else {
    let a = (sum + sub) / 2
    let b = sum - a
    
    if a+b != sum {
        print(-1)
    }
    else {
        if (sum % 2) != (sub % 2) {
            print(-1)
        }
        else {
            print(max(a, b), min(a, b))
        }
    }
}
