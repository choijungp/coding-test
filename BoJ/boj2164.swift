import Foundation

class Queue{
    var enqueue: [Int]
    var dequeue: [Int] = []
    
    var isEmpty: Bool{
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var count: Int{
        return enqueue.count + dequeue.count
    }
    
    init(_ queue:[Int]){
        self.enqueue = queue
    }
    
    func push(_ n: Int){
        enqueue.append(n)
    }
    
    func pop() -> Int?{
        if dequeue.isEmpty{
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }   
}

let n = Int(readLine()!)!
var queue: Queue = Queue(Array(1...n))

while queue.count != 1 {
    let _ = queue.pop()
    if let tmp = queue.pop() {
        queue.push(tmp)
    }
}
print(queue.pop()!)
