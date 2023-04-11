import Foundation

let ab = readLine()!.split(separator: " ")
var strA = String(ab[0]), strB = String(ab[1])
let minA = Int(strA.replacingOccurrences(of: "6", with: "5"))!
let minB = Int(strB.replacingOccurrences(of: "6", with: "5"))!

let maxA = Int(strA.replacingOccurrences(of: "5", with: "6"))!
let maxB = Int(strB.replacingOccurrences(of: "5", with: "6"))!

print(minA+minB, maxA+maxB)
