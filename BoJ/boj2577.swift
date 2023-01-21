import Foundation

let n1 = Int(readLine()!)!
let n2 = Int(readLine()!)!
let n3 = Int(readLine()!)!

let number = n1 * n2 * n3
print(String(number).filter({ $0 == "0"}).count)
print(String(number).filter({ $0 == "1"}).count)
print(String(number).filter({ $0 == "2"}).count)
print(String(number).filter({ $0 == "3"}).count)
print(String(number).filter({ $0 == "4"}).count)
print(String(number).filter({ $0 == "5"}).count)
print(String(number).filter({ $0 == "6"}).count)
print(String(number).filter({ $0 == "7"}).count)
print(String(number).filter({ $0 == "8"}).count)
print(String(number).filter({ $0 == "9"}).count)
