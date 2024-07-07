import SwiftUI
import UIKit
import PDFKit
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    var body: some View {
        TabView {
            Button(action: {
                // Action for first button
            }) {
                QRCodeView()
            }
            .tabItem {
                Image(systemName: "wallet.pass.fill")
                Text("Wallet")
            }
            
            NavigationView {
                MarketsView()
            }
            .tabItem {
                Image(systemName: "chart.xyaxis.line")
                Text("Markets")
            }
            
            Button(action: {
                // Action for third button
            }) {
                SettingsView()
            }
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
        }
    }
}

#Preview {
    ContentView()
}
