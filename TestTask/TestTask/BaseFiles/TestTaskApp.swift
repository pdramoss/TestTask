//
//  TestTaskApp.swift
//  TestTask
//
//  Created by Pedro Ramos on 15/03/25.
//

import SwiftUI

@main
struct TestTaskApp: App {
    @State var networMonitor = NetworkMonitor()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(networMonitor)
        }
    }
}
