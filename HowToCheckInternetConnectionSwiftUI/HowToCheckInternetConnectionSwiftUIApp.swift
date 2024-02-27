//
//  HowToCheckInternetConnectionSwiftUIApp.swift
//  HowToCheckInternetConnectionSwiftUI
//
//  Created by Neto Lobo on 27/02/24.
//

import SwiftUI

@main
struct HowToCheckInternetConnectionSwiftUIApp: App {
    @State private var networkMonitor = NetworkMonitor()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(networkMonitor)
        }
    }
}
