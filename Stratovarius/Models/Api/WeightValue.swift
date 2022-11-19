//
//  WeightValue.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 08/11/2022.
//

import Foundation

struct ApiWeightValue: Identifiable, Codable {
    public var id: String
    var raw: Float
    var formatted: String
    var rawGram: Float
    var date: Date
    var createdAt: Date
    var updatedAt: Date
}
