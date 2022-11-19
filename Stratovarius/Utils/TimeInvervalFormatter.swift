//
//  TimeInvervalFormatter.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 09/11/2022.
//

import Foundation

func timeIntervalFormatter() -> DateComponentsFormatter {
    let formatter = DateComponentsFormatter()

    formatter.unitsStyle = .full
    formatter.allowedUnits = [.year, .month]
    
    return formatter
}
