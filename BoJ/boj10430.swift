let array = readLine()!.split(separator: " ").map { Int($0)! }
print((array[0] + array[1]) % array[2])
print(((array[0] % array[2]) + (array[1] + array[2])) % array[2])
print((array[0] * array[1]) % array[2])
print(((array[0] % array[2]) * (array[1] % array[2])) % array[2])
