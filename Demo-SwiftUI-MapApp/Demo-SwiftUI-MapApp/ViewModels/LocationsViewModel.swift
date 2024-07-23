//
//  LocationsViewModel.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/22/24.
//


import Foundation
import MapKit
import SwiftUI


class LocationsViewModel: ObservableObject {
    
    /// All loaded locations
    @Published var locations: [Location]
    
    /// Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    /// Location Region
    @Published var mapRegion: MapCameraPosition
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)

    
    /// Initializer
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.mapRegion = .region(
            MKCoordinateRegion(
                center: locations.first!.coordinates,
                span: mapSpan
            )
        )
        
        self.updateMapRegion(location: locations.first!)
    }
    
    
    /// Updates the location of the Region
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = .region(
                MKCoordinateRegion(
                    center: location.coordinates,
                    span: mapSpan
                )
            )
        }
    }
    
    
}

