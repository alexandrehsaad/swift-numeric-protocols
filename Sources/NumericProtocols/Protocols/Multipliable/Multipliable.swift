// Multipliable.swift
// NumericProtocols
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// Representing values that can be multiplied.
public protocol Multipliable: Equatable {
	
	// MARK: - Multiplying Values
	
	/// Returns the product of multiplying the two specified values.
	///
	/// - parameter lhs: The multiplicand.
	/// - parameter rhs: The multiplicator.
	/// - returns: The product.
	static func * (lhs: Self, rhs: Self) -> Self
}

extension Multipliable {
	
	// MARK: - Inspecting Values
	
	/// Returns a boolean value indicating whether this value is a multiple of the specified value.
	///
	/// ```swift
	/// print(50.isMultiple(of: 10))
	/// // Prints "true"
	/// ```
	///
	/// - parameter other: The value to test.
	/// - returns: Returns `true` if this value is a multiple of the given value, and `false` otherwise.
	public func isMultiple(of other: Self) -> Bool
	where Self: Divisible & ExpressibleByFloatLiteral {
		return (self % other) == 0.0
	}
	
	// MARK: - Multiplying Values
	
	/// Multiplies the two specified values and stores the product in the left-hand-side variable.
	///
	/// - parameter lhs: The multiplicand.
	/// - parameter rhs: The multiplicator.
	public static func *= (lhs: inout Self, rhs: Self) {
		lhs = lhs * rhs
	}
	
    /// Returns the product of multiplying this value by the specified value.
    ///
    /// ```swift
    /// print(2.multiplying(by: 3))
    /// // Prints "6"
    /// ```
    ///
    /// - parameter multiplicator: The multiplicator.
    /// - returns: The product.
    public func multiplying(by multiplicator: Self) -> Self {
        return self * multiplicator
    }
    
    /// Multiplies this value by the specified value and produces the product.
    ///
    /// ```swift
    /// var number: Double = 2
    /// number.multiply(by: 3)
	/// print(number)
    /// // Prints "6"
    /// ```
    ///
    /// - parameter multiplicator: The multiplicator.
    public mutating func multiply(by multiplicator: Self) {
        self *= multiplicator
    }
	
	// MARK: - Doubling Values
	
    /// Returns this value doubled.
    ///
    /// ```swift
    /// print(1.doubled())
    /// // Prints "2"
    /// ```
	///
	///  - returns: The value doubled.
    public func doubled() -> Self
	where Self: ExpressibleByIntegerLiteral {
        return self * 2
    }
    
    /// Doubles this value.
    ///
    /// ```swift
    /// var number: Double = 1
    /// number.double()
	/// print(number)
    /// // Prints "2"
    /// ```
    public mutating func double()
	where Self: ExpressibleByIntegerLiteral {
        self = self.doubled()
    }
}

extension Multipliable
where Self: Addable & FixedWidthInteger {
	public static func * (lhs: Self, rhs: Self) -> Self {
		var result: Self = lhs
		
		for _ in 1..<rhs {
			result += lhs
		}
		
		return result
	}
}
