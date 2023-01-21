let array = readLine()!.split(separator: " ").map { Int($0)! }
if array[0] > array[1] {
    print(">")
}
else if array[0] < array[1] {
    print("<")
}
else {
    print("==")
}
