//
//  ArtopiaApp.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

@main
struct ArtopiaApp: App {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
           // ContentView()
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark: .light)
        }
    }
}
