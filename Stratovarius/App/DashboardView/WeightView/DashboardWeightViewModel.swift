//
//  DashboardWeightViewModel.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 10/11/2022.
//

import Foundation

extension DashboardWeightsView {
    @MainActor class ViewModel: ObservableObject {
        var data: [ApiWeightValue]
        var units: WeightUnits = .Kilogram
        
        init (data: [ApiWeightValue] = []) {
            self.data = data
        }
        
        func delete(_ id: String) -> Void {
            print("Delete \(id)")
        }
    }
}
