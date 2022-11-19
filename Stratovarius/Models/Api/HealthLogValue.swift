//
//  HealthLogValue.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 11/11/2022.
//

import Foundation

struct ApiHealthLogValue: Identifiable, Codable {
    public var id: String
    var kind: HealthLogKind
    var date: String
    var medicine: [ApiShortMedicineValue]
    var additionalMedicines: [String]
    var veterinary: String?
    var diagnosis: String?
    var nextVisit: Date?
    var description: String?
    var addedBy: ApiUserSimple
    var createdAt: Date
    var updatedAt: Date
    
    var medicineAsString: String {
        let medicines =  self.medicine.map { $0.name } + self.additionalMedicines
        
        return medicines.joined(separator: ", ")
    }
}
