let array = readLine()!.split(separator: " ").map { Int($0)! }
var hour = array[0]
var minute = array[1]

minute -= 45
if minute < 0 {
    hour -= 1
    minute += 60
}
if hour < 0 {
    hour += 24
}
print("\(hour) \(minute)")
