//
//  Demo_SwiftUI_MapAppApp.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/21/24.
//

import SwiftUI

@main
struct Demo_SwiftUI_MapAppApp: App {
    
    /// Initializes View Model
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
