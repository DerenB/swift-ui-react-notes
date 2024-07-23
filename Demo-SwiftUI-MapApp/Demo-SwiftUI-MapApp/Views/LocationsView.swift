//
//  LocationsView.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/22/24.
//


import SwiftUI
import MapKit


struct LocationsView: View {
    
    /// Using the view model from the environment
    @EnvironmentObject private var vm: LocationsViewModel
    
    
    var body: some View {
        ZStack {
            Map(position: $vm.mapRegion)
                .ignoresSafeArea()
        }
    }
}


#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

