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
    }
    
    var body: some View {
        VStack(spacing: VisualValues.vstackSpacing) {
            Image(VisualValues.imageName)
            Text(Localizable.label)
                .font(FontNunito.regular.h01())
                .foregroundStyle(Color.styleBlack87)
        }
    }
}

#Preview {
    UsersEmptyView()
}
