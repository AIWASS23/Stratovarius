//
//  SequenceType.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 09/11/2022.
//

import Foundation

public extension Sequence {
    func find(predicate: (Iterator.Element) throws -> Bool) rethrows -> Iterator.Element? {
        for element in self {
            if try predicate(element) {
                return element
            }
        }
        return nil
    }
}
