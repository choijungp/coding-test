import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let ab = readLine()!.split(separator: " ").map({ Int($0)! })

    func getComputer(_ a: Int, _ b: Int) -> Int {
        var pattern = [a % 10]
        var nowNum = a
        
        for _ in 1...b {
            nowNum *= a
            let r = nowNum % 10
            
            if r == pattern[0] {
                break
            }
            else {
                pattern.append(r)
            }
        }
        
        var i = b % pattern.count - 1
        if i == -1 {
            i = pattern.count - 1
        }
        return pattern[i] == 0 ? 10 : pattern[i]
    }
    print(getComputer(ab[0], ab[1]))
}
