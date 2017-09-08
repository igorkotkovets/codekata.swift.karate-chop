//
//  XCTest+Extensions.swift
//  
//
//  Created by Igor Kotkovets on 7/30/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest

func assertPairsEqual<T: Equatable>(expected: T, actual: T, file: StaticString = #file, line: UInt = #line) {
    if actual != expected {
        XCTFail("Expected \(expected) but was \(actual)", file: file, line: line)
    }
}

func assertEqualNil<T>(actual: T?, file: StaticString = #file, line: UInt = #line) {
    if actual != nil {
        XCTFail("Expected nil but was \(String(describing: actual))", file: file, line: line)
    }
}

func assertEqualNotNil<T>(actual: T?, file: StaticString = #file, line: UInt = #line) {
    if actual == nil {
        XCTFail("Expected object but was nil", file: file, line: line)
    }
}

func assertException(file: StaticString = #file, line: UInt = #line) {
    XCTFail("Unxpected exception has been throwed", file: file, line: line)
}
