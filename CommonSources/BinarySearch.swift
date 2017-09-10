//
//  BinarySearch.swift
//  KarateChop
//
//  Created by igork on 9/8/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import Foundation

enum BinarySearchError: Error {
    case notFound
}

extension BinarySearchError: Equatable {
    public static func ==(lhs: BinarySearchError, rhs: BinarySearchError) -> Bool {
        switch (lhs, rhs) {
        case (.notFound, .notFound):
            return true
        }
    }
}

public protocol BinarySearchInterface {
    static func findNearest(for value: Int, in list: [Int]) throws -> Int
}

public class IterativeBinarySearch: BinarySearchInterface {
    static public func findNearest(for value: Int, in list: [Int]) throws -> Int {
        for (index, listValue) in list.enumerated() {
            if value == listValue {
                return index
            }
        }
        
        throw BinarySearchError.notFound
    }
}
