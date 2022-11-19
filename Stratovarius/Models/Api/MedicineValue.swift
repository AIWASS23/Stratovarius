//
//  MediciineValue.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 11/11/2022.
//

import Foundation

struct ApiShortMedicineValue: Identifiable, Codable {
    var productNumber: String
    var name: String
    
    public var id: String { self.productNumber }
}
