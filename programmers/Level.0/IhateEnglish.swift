import Foundation

func solution(_ numbers:String) -> Int64 {
    var numberString = numbers
    numberString = numberString.replacingOccurrences(of: "zero", with: "0");
    numberString = numberString.replacingOccurrences(of: "one", with: "1");
    numberString = numberString.replacingOccurrences(of: "two", with: "2");
    numberString = numberString.replacingOccurrences(of: "three", with: "3");
    numberString = numberString.replacingOccurrences(of: "four", with: "4");
    numberString = numberString.replacingOccurrences(of: "five", with: "5");
    numberString = numberString.replacingOccurrences(of: "six", with: "6");
    numberString = numberString.replacingOccurrences(of: "seven", with: "7");
    numberString = numberString.replacingOccurrences(of: "eight", with: "8");
    numberString = numberString.replacingOccurrences(of: "nine", with: "9");
    
    return Int64(numberString) ?? 0
}
