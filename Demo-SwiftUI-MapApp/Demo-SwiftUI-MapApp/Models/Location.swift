//
//  Location.swift
//  Demo-SwiftUI-MapApp
//
//  Created by Deren Bozer on 7/21/24.
//


import Foundation
import MapKit


struct Location: Identifiable, Equatable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    
    /// Identifiable requirement
    var id: String {
        name + cityName
    }
    
    
    /// Equatable requirement
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}

