import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map({ Int($0)! })
var setArr = Array(Set(arr))
setArr.sort()

func binarySearch(_ start: Int, _ end: Int, _ target: Int) -> Int {
    let mid = (start + end) / 2
    if setArr[mid] == target {
        return mid
    }
    else if setArr[mid] > target {
        return binarySearch(start, mid-1, target)
    }
    else {
        return binarySearch(mid+1, end, target)
    }
}

for num in arr {
    print(binarySearch(0, setArr.count, num), terminator: " ")
}
