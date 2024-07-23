//
//  LocationsView.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/22/24.
//


import SwiftUI


struct LocationsView: View {
    
    /// Using the view model from the environment
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}


#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

