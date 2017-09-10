//
//  BinarySearchTests.swift
//  KarateChop
//
//  Created by Igor Kotkovets on 9/10/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import XCTest
import CleanTests
@testable import Common

class BinarySearchTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformance() {
        self.measure {
            let _ = try? BinarySearch.findPosition(for: 1, in: [1, 3, 5])  
        }
    }
    
}
