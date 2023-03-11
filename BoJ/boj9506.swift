import Foundation

while true {
    let num = Int(readLine()!)!
    if num == -1 { break }
    
    var prime = [Int]()
    var sum = 0
    for i in 1..<num {
        if num % i == 0 {
            prime.append(i)
            sum += i
        }
    }
    if sum == num {
        print("\(num) = ", terminator: "")
        for i in 0..<prime.count {
            print("\(prime[i])", terminator: "")
            if i != prime.count - 1 {
                print(" + ", terminator: "")
            }
        }
        print("")
    }
    else {
        print("\(num) is NOT perfect.")
    }
}
