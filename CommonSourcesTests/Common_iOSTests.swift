//
//  Common_iOSTests.swift
//  Common_iOSTests
//
//  Created by igork on 9/8/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import XCTest
@testable import Common

class Common_iOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIterativeBinarySearch() {
        assertPairsEqual(expected: 1, actual: IterativeBinarySearch.findNearest(for: 1, in: [0,1,2]))
    }
    
}
