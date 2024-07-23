//
//  Location.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/21/24.
//


import Foundation
import MapKit


struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    /// Identifiable 
    var id: String {
        name + cityName
    }
}

