while let input = readLine() {
    let arr = input.split(separator: " ").map { Int($0)! }
    print(arr[0] + arr[1])
}
