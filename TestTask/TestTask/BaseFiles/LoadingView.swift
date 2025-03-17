//
//  LoadingView.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

struct LoadingView: View {
    @State private var animationsRunning = false
    
    var body: some View {
        VStack {
            Image(systemName: "slowmo")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .foregroundStyle(Color.styleSecondary)
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.accentColor
                .ignoresSafeArea()
        }
    }
}
