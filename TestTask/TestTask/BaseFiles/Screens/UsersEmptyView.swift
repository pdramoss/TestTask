//
//  UsersEmptyView.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

struct UsersEmptyView: View {
    struct Localizable {
        static var label: String = String(localized: "userempty.label")
    }
    
    struct VisualValues {
        static var imageName: String = "UserEmpty"
        static var vstackSpacing: CGFloat = 16.0
        static var textFont: Font = FontNunito.regular.h1
        static var foregroundColor: Color = ColorTask.black.base87
    }
    
    var body: some View {
        VStack(spacing: VisualValues.vstackSpacing) {
            Image(VisualValues.imageName)
            Text(Localizable.label)
                .font(VisualValues.textFont)
                .foregroundStyle(VisualValues.foregroundColor)
        }
    }
}

#Preview {
    UsersEmptyView()
}
