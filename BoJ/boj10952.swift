while true {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    if arr[0] == 0 && arr[1] == 0 {
        break
    }
    print(arr[0] + arr[1])
}
