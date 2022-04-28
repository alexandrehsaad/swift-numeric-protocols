// FloatTests+RaisableTests.swift
// NumericProtocolsTests
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import NumericProtocols

extension FloatTests: RaisableTests {
	func test_isPowerOfReturnsFalse() {
		// Given
		let value: TestSubject = 3
		
		// When
		let isPowerOfTwo: Bool = value.isPower(of: 2)

		// Then
		XCTAssertFalse(isPowerOfTwo)
	}
	
	func test_isPowerOfReturnsTrue() {
		// Given
		let value: TestSubject = 4
		
		// When
		let isPowerOfTwo: Bool = value.isPower(of: 2)

		// Then
		XCTAssertTrue(isPowerOfTwo)
	}
	
	func test_exponentiationSucceeds() {
		// Given
		let base: TestSubject = 2
		let exponent: UInt = 2
		
		// When
		let power: TestSubject = base ** exponent
		
		// Then
		XCTAssertEqual(power, 4)
	}
	
	func test_exponentiationEqualSucceeds() {
		// Given
		var power: TestSubject = 2
		let exponent: UInt = 2
		
		// When
		power **= exponent

		// Then
		XCTAssertEqual(power, 4)
	}
    
    func test_raisingToSucceeds() {
		// Given
		let base: TestSubject = 2
		let exponent: UInt = 2
		
		// When
		let power: TestSubject = base.raising(to: exponent)
		
		// Then
		XCTAssertEqual(power, 4)
    }
    
    func test_raiseToSucceeds() {
		// Given
		var power: TestSubject = 2
		let exponent: UInt = 2
		
		// When
		power.raise(to: exponent)

		// Then
		XCTAssertEqual(power, 4)
    }
	
	func test_squaredSucceeds() {
		// Given
		let base: TestSubject = 2
		
		// When
		let power: TestSubject = base.squared()

		// Then
		XCTAssertEqual(power, 4)
	}
	
	func test_squareSucceeds() {
		// Given
		var power: TestSubject = 2
		
		// When
		power.square()

		// Then
		XCTAssertEqual(power, 4)
	}
	
	func test_cubedSucceeds() {
		// Given
		let base: TestSubject = 2
		
		// When
		let power: TestSubject = base.cubed()

		// Then
		XCTAssertEqual(power, 8)
	}
	
	func test_cubeSucceeds() {
		// Given
		var power: TestSubject = 2
		
		// When
		power.cube()

		// Then
		XCTAssertEqual(power, 8)
	}
}

extension FloatTests {
	func test_raisingToNegSucceeds() {
		// Given
		let base: TestSubject = 2
		let exponent: Int = -3
		
		// When
		let power: TestSubject = base.raising(to: exponent)
		
		// Then
		XCTAssertEqual(power, 0.125)
	}
	
	func test_raisingToZeroSucceeds() {
		// Given
		let base: TestSubject = 2
		let exponent: UInt = 0
		
		// When
		let power: TestSubject = base.raising(to: exponent)

		// Then
		XCTAssertEqual(power, 1)
	}
	
	func test_raisingToNanReturnsNan() {
		// Given
		let nan: TestSubject = .nan
		
		// When
		let power: TestSubject = nan.raising(to: 1)
		
		// Then
		XCTAssertTrue(power.isNaN)
	}
	
	func test_raisingToInfSucceeds() {
		// Given
		let positiveInfinity: TestSubject = .infinity
		let negativeInfinity: TestSubject = -positiveInfinity
		
		// Then
		XCTAssertEqual(positiveInfinity * 1, positiveInfinity)
		XCTAssertEqual(positiveInfinity.raising(to: 1), positiveInfinity)
		
		XCTAssertEqual(positiveInfinity * -1, negativeInfinity)
		XCTAssertEqual(positiveInfinity.raising(to: -1), negativeInfinity)
		
		XCTAssertEqual(negativeInfinity * 1, negativeInfinity)
		XCTAssertEqual(negativeInfinity.raising(to: 1), negativeInfinity)
		
		XCTAssertEqual(negativeInfinity * -1, positiveInfinity)
		XCTAssertEqual(negativeInfinity.raising(to: -1), positiveInfinity)
	}
}
