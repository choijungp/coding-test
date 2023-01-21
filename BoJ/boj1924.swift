import Foundation

let xy = readLine()!.split(separator: " ").map({ Int($0)! })
let month = xy[0]
var date = xy[1]
let months = [1, 3, 5, 7, 8, 10, 12]
let days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]

for i in 1..<month {
    if i == 2 {
        date += 28
    }
    else if months.contains(i) {
        date += 31
    }
    else {
        date += 30
    }
}
print(days[date % 7])
