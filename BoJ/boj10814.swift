import Foundation

struct Student{
    var name : String
    var age : Int
    var index : Int
}

let num = Int(readLine()!)!
var students = [Student]()
for i in 0..<num {
    let input = readLine()!.split(separator: " ")
    let student = Student(name: String(input[1]), age: Int(input[0])!, index: i)
    students.append(student)
}
students.sort { a, b in a.age == b.age ? a.index < b.index : a.age < b.age }

for i in 0..<num {
    print(students[i].age, students[i].name)
}
