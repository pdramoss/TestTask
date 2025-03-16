//
//  ContentView.swift
//  TestTask
//
//  Created by Pedro Ramos on 15/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Lorem ipsum dolor sit amet.")
                .font(FontNunito.bold.h01())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
