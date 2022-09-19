func basic() {
    // 变量声明
    let constantValue = 0
    var variableValue = 0
    variableValue += 1

    // 数据类型
    let int = Int.min
    let uint: UInt = UInt.max
    let int8: Int8 = 123
    let uint8 = UInt(0b10001)
    let int16: Int16 = -0o21
    let uint16: UInt16 = 0o21
    let int32: Int32 = -0x11
    let uint32: UInt32 = 0x11
    let int64: Int64 = -123_456
    let uint64: UInt64 = 123_456

    let boolTrue: Bool = true
    let boolFalse = false

    let exponentFloat: Float = 1.21875e1
    let hexadecimalDouble: Double = 0xC.3p0

    let http404Error = (404, "Not Found")
    let (statusCode, statusMessage) = http404Error

    // 类型别名
    typealias MyEnum = UInt16
    let myEnum: MyEnum = MyEnum.min

    print(
            """
            \(constantValue) \(variableValue) 
            \(int) \(uint) \(int8) \(uint8) \(int16) \(uint16)
            \(int32) \(uint32) \(int64) \(uint64)
            \(boolTrue) \(boolFalse) \(exponentFloat) \(hexadecimalDouble)
            \(statusCode) \(statusMessage) \(myEnum)
            """
    )

}

func stringAndCharacters() {
    // 字符串
    let emptyString = ""
    let anotherEmptyString = String()

    if emptyString.isEmpty && anotherEmptyString.isEmpty {
        print("string are empty")
    }

    var variableString = "start \u{1F496}, "
    variableString += emptyString + anotherEmptyString

    for character in variableString {
        print(character)
    }

    // 字符
    let exclamationMark: Character = "!"
    let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
    var catString = String(catCharacters)
    catString.append(exclamationMark)

    // 字符串插值
    let multiplier = 3
    let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
    print(message)

    // UNICODE
    let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
    print(decomposed)

    let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
    print("unusualMenagerie has \(unusualMenagerie.count) characters")

    var word = "cafe"
    print("the number of characters in \(word) is \(word.count)")
    word += "\u{301}"
    print("the number of characters in \(word) is \(word.count)")

}

basic()
stringAndCharacters()

collections()
controlFlow()