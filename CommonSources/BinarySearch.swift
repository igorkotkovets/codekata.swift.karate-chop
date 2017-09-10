//
//  BinarySearch.swift
//  KarateChop
//
//  Created by igork on 9/8/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import Foundation

enum SearchError: Error {
    case notFound
}

extension SearchError: Equatable {
    public static func ==(lhs: SearchError, rhs: SearchError) -> Bool {
        switch (lhs, rhs) {
        case (.notFound, .notFound):
            return true
        }
    }
}

public protocol AlgorithmSearchInterface {
    static func findPosition(for value: Int, in list: [Int]) throws -> Int
}

public class IterativeSearch: AlgorithmSearchInterface {
    static public func findPosition(for value: Int, in list: [Int]) throws -> Int {
        for (index, listValue) in list.enumerated() {
            if value == listValue {
                return index
            }
        }
        
        throw SearchError.notFound
    }
}
