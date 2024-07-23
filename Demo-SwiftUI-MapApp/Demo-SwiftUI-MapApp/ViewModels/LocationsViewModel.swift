//
//  LocationsViewModel.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/22/24.
//


import Foundation


class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
    
}

