import Foundation

let n = Int(readLine()!)!
let arrA = readLine()!.split(separator: " ").map({ Int($0)! }).sorted(by: <)

let m = Int(readLine()!)!
let arrM = readLine()!.split(separator: " ").map({ Int($0)! })

func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var start = 0
    var end = arr.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if arr[mid] == target {
            return 1
        }
        else if arr[mid] > target {
            end = mid - 1
        }
        else if arr[mid] < target {
            start = mid + 1
        }
    }
    return 0
}

for m in arrM {
    print(binarySearch(arrA, m))
}
