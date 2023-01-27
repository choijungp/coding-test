import Foundation

let angle1 = Int(readLine()!)!
let angle2 = Int(readLine()!)!
let angle3 = Int(readLine()!)!

if angle1 + angle2 + angle3 == 180 {
    if angle1 == 60 {
        if angle2 == 60 {
            print("Equilateral")
        }
        else {
            print("Scalene")
        }
    }
    else {
        if angle1 == angle2 || angle2 == angle3 || angle1 == angle3 {
            print("Isosceles")
        }
        else {
            print("Scalene")
        }
    }
}
else {
    print("Error")
}
