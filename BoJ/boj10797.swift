import Foundation

let t = Int(readLine()!)!
let cars = readLine()!.split(separator: " ").map({ Int($0)! })
print(cars.filter({ $0 == t }).count)
