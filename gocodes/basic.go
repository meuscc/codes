package main

func Basic() {
	// Constants and Variables
	var variableValue = 1
	variableValue2 := variableValue
	_ = variableValue2
	const constantValue = 1

	// Basic Types
	const uint8Variable uint8 = 1 + 0b000_000 + 0o000 + 0x00
	const float32Variable float32 = 1 + 1e0
	const complex128Variable = real(1+1i) + imag(1+1i) + complex128(float32Variable)
	const trueValue bool = true
	const falseValue bool = false
	const byteVariable byte = 'A'
	const runeVariable rune = '世' + '\u4e16' + '\U00004e16'
	type EnumType int
	const (
		EnumTypeElement1 EnumType = iota
	)
	const tupleVariable1, tupleVariable2 = 1, 2
}
