import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    if command[0] == "push" {
        arr.append(Int(String(command[1]))!)
    }
    else if command[0] == "pop" {
        if arr.isEmpty {
            print(-1)
        }
        else {
            print(arr[0])
            arr.removeFirst()
        }
    }
    else if command[0] == "size" {
        print(arr.count)
    }
    else if command[0] == "empty" {
        if arr.isEmpty {
            print(1)
        }
        else {
            print(0)
        }
    }
    else if command[0] == "front" {
        if arr.isEmpty {
            print(-1)
        }
        else {
            print(arr[0])
        }
    }
    else if command[0] == "back" {
        if arr.isEmpty {
            print(-1)
        }
        else {
            print(arr[arr.count - 1])
        }
    }
}
