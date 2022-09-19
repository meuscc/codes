func controlFlow() {
    let names = ["Anna", "Alex", "Brian", "Jack"]
    for name in names {
        print("Hello, \(name)!")
    }

    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName, legCount) in numberOfLegs {
        print("\(animalName)s have \(legCount) legs")
    }

    let base = 3
    let power = 10
    var answer = 1
    for _ in 1...power {
        answer *= base
    }
    print("\(base) to the power of \(power) is \(answer)")

    let minutes = 60
    for tickMark in 0..<minutes {
        print(tickMark)
    }

    let minuteInterval = 5
    for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
        print(tickMark)
    }

    let hours = 12
    let hourInterval = 3
    for tickMark in stride(from: 3, through: hours, by: hourInterval) {
        print(tickMark)
    }

    var i = 0
    while i < 10 {
        i += 1
    }

    var j = 0
    repeat {
        j += 1
    } while j < 10

    let temperatureInFahrenheit = 90
    if temperatureInFahrenheit <= 32 {
        print("It's very cold. Consider wearing a scarf.")
    } else if temperatureInFahrenheit >= 86 {
        print("It's really warm. Don't forget to wear sunscreen.")
    } else {
        print("It's not that cold. Wear a t-shirt.")
    }

    let someCharacter: Character = "z"
    switch someCharacter {
    case "a", "A":
        print("The first letter of the alphabet")
    case "z":
        print("The last letter of the alphabet")
    default:
        print("Some other character")
    }

    let approximateCount = 62
    let countedThings = "moons orbiting Saturn"
    let naturalCount: String
    switch approximateCount {
    case 0:
        naturalCount = "no"
    case 1..<5:
        naturalCount = "a few"
    case 5..<12:
        naturalCount = "several"
    case 12..<100:
        naturalCount = "dozens of"
    case 100..<1000:
        naturalCount = "hundreds of"
    default:
        naturalCount = "many"
    }
    print("There are \(naturalCount) \(countedThings).")

    let somePoint = (1, 1)
    switch somePoint {
    case (0, 0):
        print("\(somePoint) is at the origin")
    case (_, 0):
        print("\(somePoint) is on the x-axis")
    case (0, _):
        print("\(somePoint) is on the y-axis")
    case (-2...2, -2...2):
        print("\(somePoint) is inside the box")
    default:
        print("\(somePoint) is outside of the box")
    }

    let anotherPoint = (2, 0)
    switch anotherPoint {
    case (let x, 0):
        print("on the x-axis with an x value of \(x)")
    case (0, let y):
        print("on the y-axis with a y value of \(y)")
    case let (x, y):
        print("somewhere else at (\(x), \(y))")
    }

    let yetAnotherPoint = (1, -1)
    switch yetAnotherPoint {
    case let (x, y) where x == y:
        print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        print("(\(x), \(y)) is just some arbitrary point")
    }

    let someCharacter2: Character = "e"
    switch someCharacter2 {
    case "a", "e", "i", "o", "u":
        print("\(someCharacter2) is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
         "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        print("\(someCharacter2) is a consonant")
    default:
        print("\(someCharacter2) isn't a vowel or a consonant")
    }

    let stillAnotherPoint = (9, 0)
    switch stillAnotherPoint {
    case (let distance, 0), (0, let distance):
        print("On an axis, \(distance) from the origin")
    default:
        print("Not on an axis")
    }
// Prints "On an axis, 9 from the origin"
}