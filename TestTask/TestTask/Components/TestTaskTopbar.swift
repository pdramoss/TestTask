//
//  TestTaskTopbar.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

struct TestTaskTopbar: View {
    @State private var text: String
    
    private struct VisualValues {
        static var lineLimit: Int = 1
        static var minWidth: CGFloat = 330
        static var maxWidth: CGFloat = .infinity
        static var height: CGFloat = 56
        static var backgroundColor: Color = ColorTask.primary.base
        static var foregroundColor: Color = ColorTask.black.base
    }
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(FontNunito.regular.h1)
            .foregroundStyle(VisualValues.foregroundColor)
            .lineLimit(VisualValues.lineLimit)
            .frame(minWidth: VisualValues.minWidth, maxWidth: VisualValues.maxWidth)
            .frame(height: VisualValues.height)
            .background(VisualValues.backgroundColor)
    }
}

#Preview {
    TestTaskTopbar("Example")
}
