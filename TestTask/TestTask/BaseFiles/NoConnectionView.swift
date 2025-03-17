//
//  NoConnectionView.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

struct NoConnectionView: View {
    struct Localizable {
        static var label: String = String(localized: "noconnection.label")
        static var button: String = String(localized: "noconnection.button")
    }
    
    struct VisualValues {
        static var imageName: String = "NoConnection"
        static var vstackSpacing: CGFloat = 16.0
    }
    
    private let action: (() -> Void)
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    var body: some View {
        VStack(spacing: VisualValues.vstackSpacing) {
            Image(VisualValues.imageName)
            Text(Localizable.label)
                .font(FontNunito.regular.h01())
                .foregroundStyle(Color.styleBlack87)
            TestTaskPrimaryButton(Localizable.button, action: {
                action()
            })
        }
    }
}

#Preview {
    NoConnectionView() {}
}
