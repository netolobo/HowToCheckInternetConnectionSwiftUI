//
//  ContentView.swift
//  HowToCheckInternetConnectionSwiftUI
//
//  Created by Neto Lobo on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(NetworkMonitor.self) private var newtworkMonitor
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Internet status:")
                .font(.title)
            
            Image(systemName: newtworkMonitor.isConnected ? "wifi" : "wifi.slash")
                    .font(.title)
                    .foregroundStyle(newtworkMonitor.isConnected ? .green : .red)
                
            Text(newtworkMonitor.isConnected ? "Connected" : "Disconnected")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(newtworkMonitor.isConnected ? .green : .red)
            }
        }
    
}

#Preview {
    ContentView()
        .environment(NetworkMonitor())
}
