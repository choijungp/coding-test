import Foundation

let t = Int(readLine()!)!

func binarySearch(_ target: Int, _ arr: [Int], _ start: Int, _ end: Int) -> Bool {
    if start > end { 
        return false
    }
    let mid = (start + end) / 2
    if arr[mid] == target {
        return true
    }
    else if arr[mid] > target {
        return binarySearch(target, arr, start, mid - 1)
    }
    else {
        return binarySearch(target, arr, mid + 1, end)
    }
    return false 
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    var note1 = readLine()!.split(separator: " ").map({ Int($0)! })
    note1.sort()
    let m = Int(readLine()!)!
    let note2 = readLine()!.split(separator: " ").map({ Int($0)! })
    
    for num in note2 {
        if binarySearch(num, note1, 0, n - 1) { 
            print("1") 
        }
        else {
            print("0")
        }
    }
}
