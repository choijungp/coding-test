import Foundation

struct Student {
    var name : String
    var year : Int
    var month : Int
    var day : Int
}

let n = Int(readLine()!)!
var students = [Student]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let student = Student(name: String(input[0]), year: Int(input[3])!, month: Int(input[2])!, day: Int(input[1])!)
    students.append(student)
}

students.sort(by: { $0.month == $1.month ? $0.day < $1.day : $0.month < $1.month })
students.sort(by: { $0.year == $1.year ? $0.month < $1.month : $0.year < $1.year })

print(students.last!.name)
print(students.first!.name)
