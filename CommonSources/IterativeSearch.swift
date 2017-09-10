//
//  IterativeSearch.swift
//  KarateChop
//
//  Created by Igor Kotkovets on 9/10/17.
//  Copyright © 2017 Igor Kotkovets. All rights reserved.
//

import Foundation

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
