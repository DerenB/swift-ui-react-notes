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
            
            VStack(spacing: 0) {
                header
                    .padding()
                
                Spacer()
            }
        }
    }
}


#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}


extension LocationsView {
    
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationsList) {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                    }
            }
            
            
            if vm.showLocationsList {
                LocationsListView()
            }
            
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    
}
