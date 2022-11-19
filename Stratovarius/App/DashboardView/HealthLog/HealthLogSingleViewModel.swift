//
//  HealthLogSingleViewModel.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 11/11/2022.
//

import Foundation

extension HealthLogSingleView {
    @MainActor class ViewModel: ObservableObject {
        @Published var data: ApiHealthLogValue
        
        init(data: ApiHealthLogValue = HEALTHLOG_0) {
            self.data = data
        }
    }
}
