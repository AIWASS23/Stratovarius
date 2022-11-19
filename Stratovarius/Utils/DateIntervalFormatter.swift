//
//  DateIntervalFormatter.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 10/11/2022.
//

import Foundation

func dateIntervalFormatter() -> DateIntervalFormatter {
    let formatter = DateIntervalFormatter()
    
    formatter.dateStyle = .long
    formatter.timeStyle = .none
    
    return formatter
}
