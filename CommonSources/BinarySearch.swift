//
//  BinarySearch.swift
//  KarateChop
//
//  Created by igork on 9/8/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import Foundation

public protocol BinarySearchInterface {
    static func findNearest(for value: Int, in list: [Int]) -> Int
}

public class IterativeBinarySearch: BinarySearchInterface {
    static public func findNearest(for value: Int, in list: [Int]) -> Int {
        return 0
    }
}
