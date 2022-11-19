//
//  StringExtensions.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 11/11/2022.
//

import Foundation

extension String {
    var asDate: Date {
        dateFormatter().date(from: self) ?? Date()
    }
}
