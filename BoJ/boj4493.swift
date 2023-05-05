import Foundation

let t = Int(readLine()!)!

func rsp(_ player1: String, _ player2: String) -> Int {
    if player1 == "R" {
        if player2 == "R" {
            return 0
        }
        else if player2 == "S" {
            return 1
        }
        else {
            return 2
        }
    }
    else if player1 == "S" {
        if player2 == "R" {
            return 2
        }
        else if player2 == "S" {
            return 0
        }
        else {
            return 1
        }
    }
    else {
        if player2 == "R" {
            return 1
        }
        else if player2 == "S" {
            return 2
        }
        else {
            return 0
        }
    }
}
for _ in 0..<t {
    let n = Int(readLine()!)!
    var p1 = 0, p2 = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        if rsp(String(input[0]), String(input[1])) == 1 {
            p1 += 1
        }
        else if rsp(String(input[0]), String(input[1])) == 2 {
            p2 += 1
        }
    }
    if p1 > p2 {
        print("Player 1")
    }
    else if p1 < p2 {
        print("Player 2")
    }
    else {
        print("TIE")
    }
}
