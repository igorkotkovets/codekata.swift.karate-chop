//
//  Common_iOSTests.swift
//  Common_iOSTests
//
//  Created by igork on 9/8/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import XCTest
import CleanTests
@testable import Common

class Common_iOSTests: XCTestCase {
    
    func testIterativeBinarySearch() {
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 3, in: []))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 3, in: [1]))
        assertPairsEqual(expected: 0, actual: try! IterativeBinarySearch.findNearest(for: 1, in: [1]))

        assertPairsEqual(expected: 0, actual: try! IterativeBinarySearch.findNearest(for: 1, in: [1, 3, 5]))
        assertPairsEqual(expected: 1, actual: try! IterativeBinarySearch.findNearest(for: 3, in: [1, 3, 5]))
        assertPairsEqual(expected: 2, actual: try! IterativeBinarySearch.findNearest(for: 5, in: [1, 3, 5]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 0, in: [1, 3, 5]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 2, in: [1, 3, 5]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 4, in: [1, 3, 5]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 6, in: [1, 3, 5]))

        assertPairsEqual(expected: 0, actual: try! IterativeBinarySearch.findNearest(for: 1, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 1, actual: try! IterativeBinarySearch.findNearest(for: 3, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 2, actual: try! IterativeBinarySearch.findNearest(for: 5, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 3, actual: try! IterativeBinarySearch.findNearest(for: 7, in: [1, 3, 5, 7]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 0, in: [1, 3, 5, 7]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 2, in: [1, 3, 5, 7]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 4, in: [1, 3, 5, 7]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 6, in: [1, 3, 5, 7]))
        assertThrowsError(expected: BinarySearchError.notFound, try IterativeBinarySearch.findNearest(for: 8, in: [1, 3, 5, 7]))
    }
    
}
