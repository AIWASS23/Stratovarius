//
//  HealthLogViewModel.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 11/11/2022.
//

import Foundation

extension HealthLogView {
    @MainActor class ViewModel: ObservableObject {
        @Published var data: [ApiHealthLogValue]
        
        init(data: [ApiHealthLogValue] = []) {
            self.data = data
        }
        
        func delete(_ id: String) -> Void {
            print("Delete \(id)")
        }
    }
}
