//
//  TestTaskPrimaryButton.swift
//  TestTask
//
//  Created by Pedro Ramos on 22/03/25.
//

import SwiftUI

struct TestTaskPrimaryButton: View {
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
        .buttonStyle(TestTaskPrimaryButtonStyle(isEnabled: isEnabled))
    }
    
    private struct VisualValues {
        static var textFont: Font = FontNunito.bold.b1
        static var backgroundColor: Color = ColorTask.primary.base
        static var backgroundDisabledColor: Color = ColorTask.gray.base
        static var pressedColor: Color = ColorTask.primary.dark
        static var foregroundColor: Color = ColorTask.black.base
        static var disabledColor: Color = ColorTask.black.base48
        static var cornerRadius: CGFloat = 45
    }
    
    private struct TestTaskPrimaryButtonStyle: ButtonStyle {
        let isEnabled: Bool
        
        @ViewBuilder
        func makeBody(configuration: Configuration) -> some View {
            let backgroundColor = isEnabled ? VisualValues.backgroundColor : VisualValues.backgroundDisabledColor
            let background = configuration.isPressed ? VisualValues.pressedColor : backgroundColor
            let foregroundColor = isEnabled ? VisualValues.foregroundColor : VisualValues.disabledColor
            
            configuration.label
                .foregroundStyle(foregroundColor)
                .background(background)
                .cornerRadius(VisualValues.cornerRadius)
        }
    }
}

#Preview {
    TestTaskPrimaryButton("Enabled") {}
    TestTaskPrimaryButton("Disabled") {}
        .disabled(true)
}
