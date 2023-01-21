import Foundation

let ab = readLine()!.split(separator: " ").map({ Int($0)! })
var hearArray: [String] = []

for _ in 0..<ab[0] {
    hearArray.append(readLine()!)
}
hearArray.sort()

var resultArr: [String] = []
for _ in 0..<ab[1] {
    let item = readLine()!
    if binarySearch(hearArray, item) {
        resultArr.append(item)
    }
}
resultArr.sort()
print(resultArr.count)
resultArr.forEach {
    print($0)
}

func binarySearch(_ arr: [String], _ item: String) -> Bool {
    var low = 0
    var high = arr.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = arr[mid]
        
        if guess == item {
            return true
        }
        else if guess > item {
            high = mid - 1
        }
        else {
            low = mid + 1
        }
    }
    return false
}
