import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 10000)
var size = 0
for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    if command[0] == "push" {
        arr[size] = Int(command[1])!
        size += 1
    }
    else if command[0] == "pop" {
        if size < 1 {
            print(-1)
        }
        else {
            print(arr[size - 1])
            size -= 1    
        }
    }
    else if command[0] == "top" {
        if size < 1 {
            print(-1)
        }
        else {
            print(arr[size - 1])
        }
    }
    else if command[0] == "empty" {
        if size < 1 {
            print(1)
        }
        else {
            print(0)
        }
    }
    else if command[0] == "size" {
        print(size)
    }
}
