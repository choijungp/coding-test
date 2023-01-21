let num1 = Int(readLine()!)!
var num2 = Int(readLine()!)!

print(num1 * (num2 % 10))
print(num1 * ((num2 % 100) / 10))
print(num1 * (num2 / 100))
print(num1 * num2)
