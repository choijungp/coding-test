func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 {
        return cities.count * 5
    }
    var cache = Array(repeating: "", count: cacheSize)
    var result = 0
    for city in cities {
        if cache.contains(city.uppercased()) {
            result += 1
            var tmpArr = cache.filter({ $0 != city.uppercased() })
            tmpArr.append(city.uppercased())
            cache = tmpArr
        }
        else {
            result += 5
            cache.removeFirst()
            cache.append(city.uppercased())
        }
    }
    return result
}
