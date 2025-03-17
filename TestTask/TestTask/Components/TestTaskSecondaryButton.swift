//
//  TestTaskSecondaryButton.swift
//  TestTask
//
//  Created by Pedro Ramos on 22/03/25.
//

import SwiftUI

struct TestTaskSecondaryButton: View {
    private let text: String
    private let action: (() -> Void)
    @Environment(\.isEnabled) var isEnabled
    
    public init(_ text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Text(text.uppercased())
                    .font(FontNunito.bold.b01())
                    .padding(.horizontal)
                    
            }
            .padding()
        }
        .buttonStyle(TestTaskSecondaryButtonStyle(isEnabled: isEnabled))
    }
    
    private struct TestTaskSecondaryButtonStyle: ButtonStyle {
        let isEnabled: Bool
        
        @ViewBuilder
        func makeBody(configuration: Configuration) -> some View {
            let backgroundColor = Color.styleWhite
            let pressedColor = Color.styleSecondaryLight
            let background = configuration.isPressed ? pressedColor : backgroundColor
            let foregroundColor = isEnabled ? Color.styleSecondary : Color.styleBlack48
            
            configuration.label
                .foregroundStyle(foregroundColor)
                .background(background)
                .cornerRadius(45)
        }
    }
}

#Preview {
    TestTaskSecondaryButton("Example") {}
    TestTaskSecondaryButton("Example") {}
        .disabled(true)
}

