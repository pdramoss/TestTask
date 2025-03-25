//
//  LoadingView.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

struct LoadingView: View {
    @State private var animationsRunning = false
    
    struct VisualValues {
        static var imageName: String = "slowmo"
        static var foregroundColor: Color = ColorTask.secondary.base
        static var frameSize: CGFloat = 115
        static var maxFrameSize: CGFloat = .infinity
    }
    
    var body: some View {
        VStack {
            Image(systemName: VisualValues.imageName)
                .resizable()
                .frame(width: VisualValues.frameSize, height: VisualValues.frameSize, alignment: .center)
                .foregroundStyle(VisualValues.foregroundColor)
                .symbolEffect(.variableColor.iterative, options: .repeat(.continuous), value: animationsRunning)
                .onAppear {
                    withAnimation {
                        animationsRunning = true
                    }
                }
                .onDisappear {
                    withAnimation {
                        animationsRunning = false
                    }
                }
        }
        .frame(maxWidth: VisualValues.maxFrameSize, maxHeight: VisualValues.maxFrameSize)
        .background {
            Color.accentColor
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LoadingView()
}
