import Foundation

let n = Int(readLine()!)!
var meetingRooms = [(Int, Int)]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({ Int($0)! })
    meetingRooms.append((input[0], input[1]))
}

meetingRooms.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.1
    }
    else {
        return $0.1 < $1.1
    }
}

var now = -1
var result = 0
for meeting in meetingRooms {
    if meeting.0 >= now {
        now = meeting.1
        result += 1
    }
}
print(result)
