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
    
    func testIterativeSearch() {
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 3, in: []))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 3, in: [1]))
        assertPairsEqual(expected: 0, actual: try! IterativeSearch.findPosition(for: 1, in: [1]))

        assertPairsEqual(expected: 0, actual: try! IterativeSearch.findPosition(for: 1, in: [1, 3, 5]))
        assertPairsEqual(expected: 1, actual: try! IterativeSearch.findPosition(for: 3, in: [1, 3, 5]))
        assertPairsEqual(expected: 2, actual: try! IterativeSearch.findPosition(for: 5, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 0, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 2, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 4, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 6, in: [1, 3, 5]))

        assertPairsEqual(expected: 0, actual: try! IterativeSearch.findPosition(for: 1, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 1, actual: try! IterativeSearch.findPosition(for: 3, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 2, actual: try! IterativeSearch.findPosition(for: 5, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 3, actual: try! IterativeSearch.findPosition(for: 7, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 0, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 2, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 4, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 6, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try IterativeSearch.findPosition(for: 8, in: [1, 3, 5, 7]))
    }

    func testBinarySearch() {
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 3, in: []))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 3, in: [1]))
        assertPairsEqual(expected: 0, actual: try! BinarySearch.findPosition(for: 1, in: [1]))

        assertPairsEqual(expected: 0, actual: try! BinarySearch.findPosition(for: 1, in: [1, 3, 5]))
        assertPairsEqual(expected: 1, actual: try! BinarySearch.findPosition(for: 3, in: [1, 3, 5]))
        assertPairsEqual(expected: 2, actual: try! BinarySearch.findPosition(for: 5, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 0, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 2, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 4, in: [1, 3, 5]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 6, in: [1, 3, 5]))

        assertPairsEqual(expected: 0, actual: try! BinarySearch.findPosition(for: 1, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 1, actual: try! BinarySearch.findPosition(for: 3, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 2, actual: try! BinarySearch.findPosition(for: 5, in: [1, 3, 5, 7]))
        assertPairsEqual(expected: 3, actual: try! BinarySearch.findPosition(for: 7, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 0, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 2, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 4, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 6, in: [1, 3, 5, 7]))
        assertThrowsError(expected: SearchError.notFound, try BinarySearch.findPosition(for: 8, in: [1, 3, 5, 7]))
    }
    
}
