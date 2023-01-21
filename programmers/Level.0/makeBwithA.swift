import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    let beforeSorted = before.sorted()
    let afterSorted = after.sorted()
    
    if beforeSorted == afterSorted {
        return 1
    }
    else {
        return 0
    }
}
