import Foundation

func collections() {
    // 数组
    var someInts: [Int] = []
    someInts.append(3)

    let threeDoubles = Array(repeating: 0.0, count: 3)

    let anotherThreeDoubles = Array(repeating: 2.5, count: 3)
    _ = threeDoubles + anotherThreeDoubles


    var shoppingList = ["Eggs", "Milk"]

    print("\(shoppingList.count) \(shoppingList.isEmpty)")

    shoppingList.append("Flour")
    shoppingList += ["Baking Powder"]

    _ = shoppingList[0]
    shoppingList[0] = "Six eggs"

    shoppingList[2...3] = ["Bananas", "Apples"]
    shoppingList.insert("Maple Syrup", at: 0)
    _ = shoppingList.remove(at: 0)

    for item in shoppingList {
        print(item)
    }

    for (index, value) in shoppingList.enumerated() {
        print("Item \(index + 1): \(value)")
    }

    // 集合
    var letters = Set<Character>()
    letters.insert("a")
    print("\(letters.count) \(letters.isEmpty) \(letters.contains("a"))")

    var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
    favoriteGenres.remove("Rock")

    for genre in favoriteGenres {
        print("\(genre)")
    }

    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [0, 2, 4, 6, 8]
    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

    _ = oddDigits.union(evenDigits).sorted()
    _ = oddDigits.intersection(evenDigits).sorted()
    _ = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
    _ = oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

    let houseAnimals: Set = ["🐶", "🐱"]
    let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
    let cityAnimals: Set = ["🐦", "🐭"]

    _ = houseAnimals.isSubset(of: farmAnimals)
    _ = farmAnimals.isSuperset(of: houseAnimals)
    _ = farmAnimals.isDisjoint(with: cityAnimals)

    // 映射
    var namesOfIntegers: [Int: String] = [:]
    namesOfIntegers[16] = "sixteen"

    var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    print("\(airports.count) \(airports.isEmpty)")

    if let airportName = airports["DUB"] {
        print("The name of the airport is \(airportName).")
    } else {
        print("That airport isn't in the airports dictionary.")
    }

    if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
        print("The old value for DUB was \(oldValue).")
    }

    airports["APL"] = "Apple International"
    airports["APL"] = nil

    if let removedValue = airports.removeValue(forKey: "DUB") {
        print("The removed airport's name is \(removedValue).")
    } else {
        print("The airports dictionary doesn't contain a value for DUB.")
    }

    for (airportCode, airportName) in airports {
        print("\(airportCode): \(airportName)")
    }

    for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
    }

    for airportName in airports.values {
        print("Airport name: \(airportName)")
    }

    let airportCodes = [String](airports.keys)
    let airportNames = [String](airports.values)

    print(airportCodes)
    print(airportNames)
}