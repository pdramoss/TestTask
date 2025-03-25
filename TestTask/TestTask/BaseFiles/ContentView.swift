//
//  ContentView.swift
//  TestTask
//
//  Created by Pedro Ramos on 15/03/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(NetworkMonitor.self) private var networkMonitor: NetworkMonitor
    @State private var showNetworkAlert: Bool = false
    
    var body: some View {
        ZStack {
            if showNetworkAlert {
                NoConnectionView {
                    showNetworkAlert = !networkMonitor.execute()
                }
            } else {
                UsersTabView()
            }
        }
        .onChange(of: networkMonitor.hasNetworkConnection, { oldValue, newValue in
            showNetworkAlert = !newValue
        })
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
