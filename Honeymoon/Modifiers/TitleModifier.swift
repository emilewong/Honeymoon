//
//  Modifiers.swift
//  Honeymoon
//
//  Created by Emile Wong on 9/7/2021.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
