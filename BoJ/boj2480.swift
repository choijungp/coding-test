let arr = readLine()!.split(separator: " ").map { Int($0)! }

if arr[0] == arr[1] {
    if arr[1] == arr[2] {
        print(10000 + 1000 * arr[0])
    }
    else {
        print(1000 + 100 * arr[0])
    }
}
else if arr[0] == arr[2] {
    print(1000 + 100 * arr[0])
}
else {
    if arr[1] == arr[2] {
        print(1000 + 100 * arr[1])
    }
    else {
        print(100 * arr.max()!)
    }
}
