//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by bosctech on 16/06/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
