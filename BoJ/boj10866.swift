import Foundation

let n = Int(readLine()!)!
var deque: [Int] = []
for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    if command[0] == "push_front" {
        let tmp = deque
        deque = [Int(String(command[1]))!]
        deque += tmp
    }
    else if command[0] == "push_back" {
        deque.append(Int(String(command[1]))!)
    }
    else if command[0] == "pop_front" {
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque[0])
            deque.removeFirst()
        }
    }
    else if command[0] == "pop_back" {
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque[deque.count - 1])
            deque.removeLast()
        }
    }
    else if command[0] == "size" {
        print(deque.count)
    }
    else if command[0] == "empty" {
        if deque.isEmpty {
            print(1)
        }
        else {
            print(0)
        }
    }
    else if command[0] == "front" {
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque[0])
        }
    }
    else { // back
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque[deque.count - 1])
        }
    }
}
