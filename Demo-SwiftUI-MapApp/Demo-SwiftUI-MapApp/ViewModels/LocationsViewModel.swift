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
    
    /// Show List of Locations
    @Published var showLocationsList: Bool = false
    
    
    
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
    
    
    /// Toggles the Location List
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    
    /// Changes the Location when list item clicked
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    
    /// Function for clicking the Next button
    func nextButtonPressed() {
        /// Get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation}) else {
            print("Could not find current index in locations array. Should never happen.")
            
            return
        }
        
        /// Check if current index is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            /// Next index is not valid, restart at 0
            guard let firstLocation = locations.first else { return }
            
            showNextLocation(location: firstLocation)
            return
        }
        
        /// Next index IS valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
    
}

