//
//  TimeInterval.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 09/11/2022.
//

import Foundation

extension TimeInterval {
    func toFormattedString() -> String {
        return timeIntervalFormatter().string(from: self) ?? String(localized: "date_now", comment: "Date of now")
    }
}
