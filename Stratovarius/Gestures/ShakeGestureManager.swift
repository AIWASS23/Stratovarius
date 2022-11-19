//
//  ShakeGestureManager.swift
//  Stratovarius
//
//  Created by Marcelo de araujo on 08/11/2022.
//

import SwiftUI
import Combine

let messagePublisher = PassthroughSubject<Void, Never>()

extension UIWindow {
    open override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        messagePublisher.send()
    }
}
