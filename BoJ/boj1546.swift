let num = Double(readLine()!)!
var scores = readLine()!.split(separator: " ").map { Double($0)! }
let maxScore = scores.max()!

scores = scores.map { $0 / maxScore * 100 }
print(scores.reduce(0.0, +) / num)
