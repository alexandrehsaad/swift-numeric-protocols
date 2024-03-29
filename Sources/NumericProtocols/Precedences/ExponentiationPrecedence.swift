//
// ExponentiationPrecedence.swift
// NumericProtocols
//
// Copyright © 2021-2024 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

precedencegroup ExponentiationPrecedence {
	associativity: right
	higherThan: MultiplicationPrecedence
}
