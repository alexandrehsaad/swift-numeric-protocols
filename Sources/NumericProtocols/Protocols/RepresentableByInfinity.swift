//
// RepresentableByInfinity.swift
// NumericProtocols
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

/// Representing values that can be represented by infinity.
public protocol RepresentableByInfinity: Equatable {
	/// A boolean value indicating whether this instance is finite.
	var isFinite: Bool { get }
	
	/// A boolean value indicating whether this instance is infinite.
	var isInfinite: Bool { get }
	
	/// The value representing positive infinity.
	static var infinity: Self { get }
}

extension RepresentableByInfinity
where Self: Negateable {
	/// The value representing negative infinity.
	public static var negativeInfinity: Self {
		return .infinity.negating()
	}
}
