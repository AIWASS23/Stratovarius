//
//  MainViewModel.swift
//  Stratovarius
//
//  Created by Marcelo de Araujo on 08/11/2022.
//

import SwiftUI

extension MainView {
    @MainActor class ViewModel: ObservableObject {
        @AppStorage("AUTH_TOKEN") var authenticated = true {
            willSet { objectWillChange.send() }
        }
        
        func signOff() -> Void {
            withAnimation {
                authenticated = false
            }
        }
    }
}
