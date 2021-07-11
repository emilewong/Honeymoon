//
//  CardTransition.swift
//  Honeymoon
//
//  Created by Emile Wong on 11/7/2021.
//

import SwiftUI

extension AnyTransition {
    static var trailingButton: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: AnyTransition.move(edge: .trailing)).combined(with: .move(edge: .bottom))
    }
    
    static var leadingButton: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: AnyTransition.move(edge: .leading)).combined(with: .move(edge: .bottom))
    }
}
