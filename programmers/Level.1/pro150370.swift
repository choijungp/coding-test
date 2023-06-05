import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result: [Int] = []
    var yymmdd = today.split(separator: ".").map({ Int($0)! })
    let todayYear = yymmdd[0], todayMonth = yymmdd[1], todayDate = yymmdd[2]
    var termDic = [String:Int]()
    
    for term in terms {
        let t = term.split(separator: " ")
        termDic[String(t[0])] = Int(t[1])!
    }
    
    for i in 0..<privacies.count {
        let p = privacies[i].split(separator: " ")
        var ymd = p[0].split(separator: ".").map({ Int($0)! })
        var pYear = ymd[0], pMonth = ymd[1], pDate = ymd[2]
        pMonth += termDic[String(p[1])]!
        if pMonth > 12 {
            pYear += pMonth / 12
            pMonth %= 12 
            if pMonth == 0 {
                pMonth = 12
                pYear -= 1
            }
        }
        
        if pYear < todayYear {
            result.append(i+1)
        } else if pYear == todayYear {
            if pMonth < todayMonth {
                result.append(i+1)
            } else if pMonth == todayMonth {
                if pDate <= todayDate {
                    result.append(i+1)
                }
            }
        }
    }

    return result
}
