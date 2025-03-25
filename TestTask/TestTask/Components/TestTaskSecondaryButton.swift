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
                    .font(VisualValues.textFont)
                    .padding(.horizontal)
                    
            }
            .padding()
        }
        .buttonStyle(TestTaskSecondaryButtonStyle(isEnabled: isEnabled))
    }
    
    private struct VisualValues {
        static var textFont: Font = FontNunito.bold.b1
        static var backgroundColor: Color = ColorTask.white.base
        static var pressedColor: Color = ColorTask.secondary.light
        static var foregroundColor: Color = ColorTask.secondary.base
        static var disabledColor: Color = ColorTask.black.base48
        static var cornerRadius: CGFloat = 45
    }
    
    private struct TestTaskSecondaryButtonStyle: ButtonStyle {
        let isEnabled: Bool
        
        @ViewBuilder
        func makeBody(configuration: Configuration) -> some View {
            let background = configuration.isPressed ? VisualValues.pressedColor : VisualValues.backgroundColor
            let foregroundColor = isEnabled ? VisualValues.foregroundColor : VisualValues.disabledColor
            
            configuration.label
                .foregroundStyle(foregroundColor)
                .background(background)
                .cornerRadius(VisualValues.cornerRadius)
        }
    }
}

#Preview {
    TestTaskSecondaryButton("Enabled") {}
    TestTaskSecondaryButton("Disabled") {}
        .disabled(true)
}

