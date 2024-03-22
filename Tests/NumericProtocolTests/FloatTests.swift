//
// FloatTests.swift
// NumericProtocolsTests
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import XCTest
@testable import NumericProtocols

internal final class FloatTests: XCTestCase {
	typealias TestSubject = Float
}

extension FloatTests: AddableTests {
    internal func test_additionSucceeds() {
        // Given
        let augend: TestSubject = 2
        let addend: TestSubject = 4
        
        // When
        let sum: TestSubject = augend + addend

        // Then
        XCTAssertEqual(sum, 6)
    }
    
    internal func test_additionEqualSucceeds() {
        // Given
        var sum: TestSubject = 2
        let addend: TestSubject = 4
        
        // When
        sum += addend

        // Then
        XCTAssertEqual(sum, 6)
    }
    
    internal func test_addingSucceeds() {
        // Given
        let augend: TestSubject = 2
        let addend: TestSubject = 4
        
        // When
        let sum: TestSubject = augend.adding(addend)

        // Then
        XCTAssertEqual(sum, 6)
    }
    
    internal func test_addSucceeds() {
        // Given
        var sum: TestSubject = 2
        let addend: TestSubject = 4
        
        // When
        sum.add(addend)

        // Then
        XCTAssertEqual(sum, 6)
    }
}

extension FloatTests: ComparableTests {
    internal func test_isLessThanReturnsFalse() {
        // Given
        let lhs: TestSubject = 2
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isLess(than: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isLessThanReturnsTrue() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 2
        
        // When
        let result: Bool = lhs.isLess(than: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isLessThanOrEqualToReturnsFalse() {
        // Given
        let lhs: TestSubject = 2
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isLessThanOrEqual(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isLessThanOrEqualToReturnsTrue() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isLessThanOrEqual(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isGreaterThanReturnsFalse() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 2
        
        // When
        let result: Bool = lhs.isGreater(than: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isGreaterThanReturnsTrue() {
        // Given
        let lhs: TestSubject = 2
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isGreater(than: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isGreaterThanOrEqualToReturnsFalse() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 2
        
        // When
        let result: Bool = lhs.isGreaterThanOrEqual(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isGreaterThanOrEqualToReturnsTrue() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isGreaterThanOrEqual(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isWithinClosedRangeReturnsFalse() {
        // Given
        let value: TestSubject = 4
        let lowerBound: TestSubject = 1
        let upperBound: TestSubject = 3
        let range: ClosedRange<TestSubject> = lowerBound...upperBound
        
        // Then
        XCTAssertFalse(value.isWithin(range))
    }
    
    internal func test_isWithinClosedRangeReturnsTrue() {
        // Given
        let value: TestSubject = 2
        let lowerBound: TestSubject = 1
        let upperBound: TestSubject = 3
        let range: ClosedRange<TestSubject> = lowerBound...upperBound
        
        // Then
        XCTAssertTrue(value.isWithin(range))
    }
    
    internal func test_isWithinBoundsReturnsFalse() {
        // Given
        let value: TestSubject = 4
        let lowerBound: TestSubject = 1
        let upperBound: TestSubject = 3
        
        // Then
        XCTAssertFalse(value.isWithin(lowerBound, to: upperBound))
    }
    
    internal func test_isWithinBoundsReturnsTrue() {
        // Given
        let value: TestSubject = 2
        let lowerBound: TestSubject = 1
        let upperBound: TestSubject = 3
        
        // Then
        XCTAssertTrue(value.isWithin(lowerBound, to: upperBound))
    }
}

extension FloatTests: DecreasableTests {
    internal func test_decreasingBySucceeds() {
        // Given
        let value: TestSubject = 10
        
        // When
        let result: TestSubject = value.decreasing(by: 10)
        
        // Then
        XCTAssertEqual(result, 9)
        XCTAssertEqual(-result, -9)
    }
}

extension FloatTests: DivisibleTests {
    internal func test_isInvertibleReturnsFalse() {
        // Given
        let value: TestSubject = .zero
        
        // When
        let result: Bool = value.isInvertible
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isInvertibleReturnsTrue() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isInvertible
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isDivisibleByReturnsFalse() {
        // Given
        let dividend: TestSubject = 3
        let divisor: TestSubject = 0
        
        // When
        let result: Bool = dividend.isDivisible(by: divisor)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isDivisibleByReturnsTrue() {
        // Given
        let dividend: TestSubject = 3
        let divisor: TestSubject = 1
        
        // When
        let result: Bool = dividend.isDivisible(by: divisor)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isFactorOfReturnsFalse() {
        // Given
        let dividend: TestSubject = 2
        let divisor: TestSubject = 3
        
        // When
        let result: Bool = dividend.isFactor(of: divisor)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isFactorOfReturnsTrue() {
        // Given
        let dividend: TestSubject = 1
        let divisor: TestSubject = 2
        
        // When
        let result: Bool = dividend.isFactor(of: divisor)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_divisionSucceeds() {
        // Given
        let dividend: TestSubject = 6
        let divisor: TestSubject = 2
        
        // When
        let quotient: TestSubject = dividend.dividing(by: divisor)
        
        // Then
        XCTAssertEqual(quotient, 3)
    }
    
    internal func test_divisionEqualSucceeds() {
        // Given
        var quotient: TestSubject = 6
        let divisor: TestSubject = 2
        
        // When
        quotient.divide(by: divisor)

        // Then
        XCTAssertEqual(quotient, 3)
    }
    
    internal func test_dividingBySucceeds() {
        // Given
        let dividend: TestSubject = 6
        let divisor: TestSubject = 2
        
        // When
        let quotient: TestSubject = dividend.dividing(by: divisor)
        
        // Then
        XCTAssertEqual(quotient, 3)
    }
    
    internal func test_divideBySucceeds() {
        // Given
        var quotient: TestSubject = 6
        let divisor: TestSubject = 2
        
        // When
        quotient.divide(by: divisor)

        // Then
        XCTAssertEqual(quotient, 3)
    }
    
    internal func test_halvedSucceeds() {
        // Given
        let value: TestSubject = 1
        
        // When
        let half: TestSubject = value.halved()
        
        // Then
        XCTAssertEqual(half, 0.5)
    }
    
    internal func test_halveSucceeds() {
        // Given
        let value: TestSubject = 1
        
        // When
        let half: TestSubject = value.halved()
        
        // Then
        XCTAssertEqual(half, 0.5)
    }
}

extension FloatTests: EquatableTests {
    internal func test_isEqualToReturnsFalse() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 2
        
        // When
        let result: Bool = lhs.isEqual(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isEqualToReturnsTrue() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isEqual(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isUnequalToReturnsFalse() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 1
        
        // When
        let result: Bool = lhs.isUnequal(to: rhs)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isUnequalToReturnsTrue() {
        // Given
        let lhs: TestSubject = 1
        let rhs: TestSubject = 2
        
        // When
        let result: Bool = lhs.isUnequal(to: rhs)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isEvenReturnsFalse() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isEven

        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isEvenReturnsTrue() {
        // Given
        let value: TestSubject = 0
        
        // When
        let result: Bool = value.isEven

        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isOddReturnsFalse() {
        // Given
        let value: TestSubject = 0
        
        // When
        let result: Bool = value.isOdd

        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isOddReturnsTrue() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isOdd

        // Then
        XCTAssertTrue(result)
    }
}

extension FloatTests: IncreasableTests {
    internal func test_increasingBySucceeds() {
        // Given
        let value: TestSubject = 10
        
        // When
        let result: TestSubject = value.increasing(by: 10)
        
        // Then
        XCTAssertEqual(result, 11)
        XCTAssertEqual(-result, -11)
    }
}

extension FloatTests: MultipliableTests {
    internal func test_isMultipleOfReturnsFalse() {
        // Given
        let multiplicand: TestSubject = 3
        let multiplicator: TestSubject = 0
        
        // When
        let result: Bool = multiplicand.isMultiple(of: multiplicator)
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isMultipleOfReturnsTrue() {
        // Given
        let multiplicand: TestSubject = 3
        let multiplicator: TestSubject = 1
        
        // When
        let result: Bool = multiplicand.isMultiple(of: multiplicator)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_muliplicationSucceeds() {
        // Given
        let multiplicand: TestSubject = 2
        let multiplier: TestSubject = 3
        
        // When
        let product: TestSubject = multiplicand * multiplier
        
        // Then
        XCTAssertEqual(product, 6)
    }
    
    internal func test_muliplicationEqualSucceeds() {
        // Given
        var product: TestSubject = 2
        let multiplier: TestSubject = 3
        
        // When
        product *= multiplier

        // Then
        XCTAssertEqual(product, 6)
    }
    
    internal func test_multiplyingBySucceeds() {
        // Given
        let multiplicand: TestSubject = 2
        let multiplier: TestSubject = 3
        
        // When
        let product: TestSubject = multiplicand.multiplying(by: multiplier)
        
        // Then
        XCTAssertEqual(product, 6)
    }
    
    internal func test_multiplyBySucceeds() {
        // Given
        var product: TestSubject = 2
        let multiplier: TestSubject = 3
        
        // When
        product.multiply(by: multiplier)

        // Then
        XCTAssertEqual(product, 6)
    }
    
    internal func test_doubledSucceeds() {
        // Given
        let value: TestSubject = 1
        
        // When
        let double: TestSubject = value.doubled()
        
        // Then
        XCTAssertEqual(double, 2)
    }
    
    internal func test_doubleSucceeds() {
        // Given
        var value: TestSubject = 1
        
        // When
        value.double()
        
        // Then
        XCTAssertEqual(value, 2)
    }
}

extension FloatTests: NegateableTests {
    internal func test_isNegativeReturnsFalse() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isNegative

        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isNegativeReturnsTrue() {
        // Given
        let value: TestSubject = -1
        
        // When
        let result: Bool = value.isNegative

        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isPositiveReturnsFalse() {
        // Given
        let value: TestSubject = -1
        
        // When
        let result: Bool = value.isPositive

        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isPositiveReturnsTrue() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isPositive

        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isSignedSucceeds() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isSigned

        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isOppositeReturnsFalse() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isOpposite(of: value)

        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isOppositeReturnsTrue() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isOpposite(of: -value)

        // Then
        XCTAssertTrue(result)
    }
}

extension FloatTests: RaisableTests {
    internal func test_isPowerOfReturnsFalse() {
        // Given
        let value: TestSubject = 3
        
        // When
        let isPowerOfTwo: Bool = value.isPower(of: 2)

        // Then
        XCTAssertFalse(isPowerOfTwo)
    }
    
    internal func test_isPowerOfReturnsTrue() {
        // Given
        let value: TestSubject = 4
        
        // When
        let isPowerOfTwo: Bool = value.isPower(of: 2)

        // Then
        XCTAssertTrue(isPowerOfTwo)
    }
    
    internal func test_exponentiationSucceeds() {
        // Given
        let base: TestSubject = 2
        let exponent: UInt = 2
        
        // When
        let power: TestSubject = base ** exponent
        
        // Then
        XCTAssertEqual(power, 4)
    }
    
    internal func test_exponentiationEqualSucceeds() {
        // Given
        var power: TestSubject = 2
        let exponent: UInt = 2
        
        // When
        power **= exponent

        // Then
        XCTAssertEqual(power, 4)
    }
    
    internal func test_raisingToSucceeds() {
        // Given
        let base: TestSubject = 2
        let exponent: UInt = 2
        
        // When
        let power: TestSubject = base.raising(to: exponent)
        
        // Then
        XCTAssertEqual(power, 4)
    }
    
    internal func test_raiseToSucceeds() {
        // Given
        var power: TestSubject = 2
        let exponent: UInt = 2
        
        // When
        power.raise(to: exponent)

        // Then
        XCTAssertEqual(power, 4)
    }
    
    internal func test_squaredSucceeds() {
        // Given
        let base: TestSubject = 2
        
        // When
        let power: TestSubject = base.squared()

        // Then
        XCTAssertEqual(power, 4)
    }
    
    internal func test_squareSucceeds() {
        // Given
        var power: TestSubject = 2
        
        // When
        power.square()

        // Then
        XCTAssertEqual(power, 4)
    }
    
    internal func test_cubedSucceeds() {
        // Given
        let base: TestSubject = 2
        
        // When
        let power: TestSubject = base.cubed()

        // Then
        XCTAssertEqual(power, 8)
    }
    
    internal func test_cubeSucceeds() {
        // Given
        var power: TestSubject = 2
        
        // When
        power.cube()

        // Then
        XCTAssertEqual(power, 8)
    }
}

extension FloatTests {
    internal func test_raisingToNegSucceeds() {
        // Given
        let base: TestSubject = 2
        let exponent: Int = -3
        
        // When
        let power: TestSubject = base.raising(to: exponent)
        
        // Then
        XCTAssertEqual(power, 0.125)
    }
    
    internal func test_raisingToZeroSucceeds() {
        // Given
        let base: TestSubject = 2
        let exponent: UInt = 0
        
        // When
        let power: TestSubject = base.raising(to: exponent)

        // Then
        XCTAssertEqual(power, 1)
    }
    
    internal func test_raisingToNanReturnsNan() {
        // Given
        let nan: TestSubject = .nan
        
        // When
        let power: TestSubject = nan.raising(to: 1)
        
        // Then
        XCTAssertTrue(power.isNaN)
    }
    
    internal func test_raisingToInfSucceeds() {
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

extension FloatTests: RepresentableByInfinityTests {
    internal func test_isFiniteReturnsFalse() {
        // Given
        let value: TestSubject = .infinity
        
        // When
        let result: Bool = value.isFinite
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isFiniteReturnsTrue() {
        // Given
        let value: TestSubject = 1.0
        
        // When
        let result: Bool = value.isFinite
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_isInfiniteReturnsFalse() {
        // Given
        let value: TestSubject = 1.0
        
        // When
        let result: Bool = value.isInfinite
        
        // Then
        XCTAssertFalse(result)
    }

    internal func test_isInfiniteReturnsTrue() {
        // Given
        let value: TestSubject = .infinity
        
        // When
        let result: Bool = value.isInfinite
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_addingInfinitySucceeds() {
        // Given
        let infinity: TestSubject = .infinity
        
        // When
        XCTAssertEqual(infinity.adding(infinity), infinity)
        XCTAssertTrue(infinity.adding(-infinity).isNaN)
        XCTAssertTrue((-infinity).adding(infinity).isNaN)
        XCTAssertEqual((-infinity).adding(-infinity), -infinity)
        XCTAssertEqual(infinity.adding(1), infinity)
        XCTAssertEqual(infinity.adding(-1), infinity)
        XCTAssertEqual(-infinity.adding(1), -infinity)
        XCTAssertEqual(-infinity.adding(-1), -infinity)
        XCTAssertEqual(.init(1).adding(infinity), infinity)
        XCTAssertEqual(.init(1).adding(-infinity), -infinity)
        XCTAssertEqual(.init(-1).adding(infinity), infinity)
        XCTAssertEqual(.init(-1).adding(-infinity), -infinity)
    }
    
    internal func test_dividingInfinitySucceeds() {
        // Given
        let infinity: TestSubject = .infinity
        let zero: TestSubject = .zero
        
        // Then
        XCTAssertTrue(infinity.dividing(by: infinity).isNaN)
        XCTAssertTrue(infinity.dividing(by: -infinity).isNaN)
        XCTAssertTrue((-infinity.dividing(by: infinity)).isNaN)
        XCTAssertTrue((-infinity.dividing(by: -infinity)).isNaN)
        XCTAssertEqual(infinity.dividing(by: 1.0), infinity)
        XCTAssertEqual(infinity.dividing(by: -1.0), -infinity)
        XCTAssertEqual(-infinity.dividing(by: 1.0), -infinity)
        XCTAssertEqual(-infinity.dividing(by: -1.0), infinity)
        XCTAssertEqual(.init(1).dividing(by: infinity), zero)
        XCTAssertEqual(.init(1).dividing(by: -infinity), zero)
        XCTAssertEqual(.init(-1).dividing(by: infinity), zero)
        XCTAssertEqual(.init(-1).dividing(by: -infinity), zero)
    }

    internal func test_multiplyingInfinitySucceeds() {
        // Given
        let infinity: TestSubject = .infinity
        
        // Then
        XCTAssertEqual(infinity.multiplying(by: infinity), infinity)
        XCTAssertEqual(infinity.multiplying(by: -infinity), -infinity)
        XCTAssertEqual(-infinity.multiplying(by: infinity), -infinity)
        XCTAssertEqual(-infinity.multiplying(by: -infinity), infinity)
        XCTAssertEqual(infinity.multiplying(by: 1), infinity)
        XCTAssertEqual(infinity.multiplying(by: -1), -infinity)
        XCTAssertEqual(-infinity.multiplying(by: 1), -infinity)
        XCTAssertEqual(-infinity.multiplying(by: -1), infinity)
        XCTAssertEqual(.init(1).multiplying(by: infinity), infinity)
        XCTAssertEqual(.init(1).multiplying(by: -infinity), -infinity)
        XCTAssertEqual(.init(-1).multiplying(by: infinity), -infinity)
        XCTAssertEqual(.init(-1).multiplying(by: -infinity), infinity)
    }
    
    internal func test_subtractingInfinitySucceeds() {
        // Given
        let infinity: TestSubject = .infinity
        
        // When
        XCTAssertTrue(infinity.subtracting(infinity).isNaN)
        XCTAssertEqual(infinity.subtracting(-infinity), infinity)
        XCTAssertEqual((-infinity).subtracting(infinity), -infinity)
        XCTAssertTrue((-infinity).subtracting(-infinity).isNaN)
        XCTAssertEqual(infinity.subtracting(1), infinity)
        XCTAssertEqual(infinity.subtracting(-1), infinity)
        XCTAssertEqual(-infinity.subtracting(1), -infinity)
        XCTAssertEqual(-infinity.subtracting(-1), -infinity)
        XCTAssertEqual(.init(1).subtracting(infinity), -infinity)
        XCTAssertEqual(.init(1).subtracting(-infinity), infinity)
        XCTAssertEqual(.init(-1).subtracting(infinity), -infinity)
        XCTAssertEqual(.init(-1).subtracting(-infinity), infinity)
    }
    
    internal func test_descriptionReturnsInfinity() {
        // Given
        let value: TestSubject = .infinity
        
        // Then
        XCTAssertEqual(value.description, "inf")
    }
    
    internal func test_descriptionReturnsNegativeInfinity() {
        // Given
        let value: TestSubject = .negativeInfinity
        
        // Then
        XCTAssertEqual(value.description, "-inf")
    }
}

extension FloatTests: RepresentableByNaNTests {
    internal func test_isNaNReturnsFalse() {
        // Given
        let value: TestSubject = 1.0
        
        // When
        let result: Bool = value.isNaN
        
        // Then
        XCTAssertFalse(result)
    }

    internal func test_isNaNReturnsTrue() {
        // Given
        let value: TestSubject = .nan
        
        // When
        let result: Bool = value.isNaN
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_nanIsEqualToNaNReturnsFalse() {
        // Given
        let nan: TestSubject = .nan
        
        // Then
        XCTAssertNotEqual(nan, nan)
    }
    
    internal func test_additionReturnsNaN() {
        // Given
        let augend: TestSubject = .nan
        let addend: TestSubject = .nan
        
        // When
        let sum: TestSubject = augend + addend

        // Then
        XCTAssertTrue(sum.isNaN)
    }
    
    internal func test_divisionReturnsNaN() {
        // Given
        let dividend: TestSubject = .nan
        let divisor: TestSubject = .nan
        
        // When
        let quotient: TestSubject = dividend / divisor

        // Then
        XCTAssertTrue(quotient.isNaN)
    }
    
    internal func test_multiplicationReturnsNaN() {
        // Given
        let multiplicand: TestSubject = .nan
        let multiplier: TestSubject = .nan
        
        // When
        let product: TestSubject = multiplicand * multiplier
        
        // Then
        XCTAssertTrue(product.isNaN)
    }
    
    internal func test_subtractionReturnsNaN() {
        // Given
        let minuend: TestSubject = .nan
        let subtrahend: TestSubject = .nan
        
        // When
        let difference: TestSubject = minuend - subtrahend

        // Then
        XCTAssertTrue(difference.isNaN)
    }
    
    internal func test_descriptionReturnsNaN() {
        // Given
        let value: TestSubject = .nan
        
        // Then
        XCTAssertEqual(value.description, "nan")
    }
}

extension FloatTests: RepresentableByZeroTests {
    internal func test_isZeroReturnsFalse() {
        // Given
        let value: TestSubject = 1
        
        // When
        let result: Bool = value.isZero
        
        // Then
        XCTAssertFalse(result)
    }
    
    internal func test_isZeroReturnsTrue() {
        // Given
        let value: TestSubject = .zero
        
        // When
        let result: Bool = value.isZero
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_additionReturnsZero() {
        // Given
        let augend: TestSubject = .zero
        let addend: TestSubject = .zero
        
        // When
        let sum: TestSubject = augend + addend

        // Then
        XCTAssertEqual(sum, .zero)
    }
    
    internal func test_divisionByZeroReturnsNaN() {
        // Given
        let dividend: TestSubject = .zero
        let divisor: TestSubject = .zero
        
        // When
        let quotient: TestSubject = dividend / divisor

        // Then
        XCTAssertTrue(quotient.isNaN)
    }
    
    internal func test_multiplicationReturnsZero() {
        // Given
        let multiplicand: TestSubject = .zero
        let multiplier: TestSubject = .zero
        
        // When
        let product: TestSubject = multiplicand * multiplier
        
        // Then
        XCTAssertEqual(product, .zero)
    }
    
    internal func test_isMultipleOfZeroReturnsTrue() {
        // Given
        let multiplicand: TestSubject = 0
        let multiplicator: TestSubject = 0
        
        // When
        let result: Bool = multiplicand.isMultiple(of: multiplicator)
        
        // Then
        XCTAssertTrue(result)
    }
    
    internal func test_subtractionReturnsZero() {
        // Given
        let minuend: TestSubject = .zero
        let subtrahend: TestSubject = .zero
        
        // When
        let difference: TestSubject = minuend - subtrahend

        // Then
        XCTAssertEqual(difference, .zero)
    }
}

extension FloatTests: SubtractableTests {
    internal func test_subtractionSucceeds() {
        // Given
        let minuend: TestSubject = 6
        let subtrahend: TestSubject = 4
        
        // When
        let difference: TestSubject = minuend - subtrahend

        // Then
        XCTAssertEqual(difference, 2)
    }
    
    internal func test_subtractionEqualSucceeds() {
        // Given
        var difference: TestSubject = 6
        let subtrahend: TestSubject = 4
        
        // When
        difference -= subtrahend

        // Then
        XCTAssertEqual(difference, 2)
    }
    
    internal func test_subtractingSucceeds() {
        // Given
        let minuend: TestSubject = 6
        let subtrahend: TestSubject = 4
        
        // When
        let difference: TestSubject = minuend.subtracting(subtrahend)

        // Then
        XCTAssertEqual(difference, 2)
    }
    
    internal func test_subtractSucceeds() {
        // Given
        var difference: TestSubject = 6
        let subtrahend: TestSubject = 4
        
        // When
        difference.subtract(subtrahend)

        // Then
        XCTAssertEqual(difference, 2)
    }
}
