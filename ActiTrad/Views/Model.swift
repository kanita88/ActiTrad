//
//  ModelFunc.swift
//  ActiTrad
//
//  Created by Apprenant 163 on 26/06/2024.
//

import Foundation
import MapKit


///Classe pour chaque pays avec son nom et sa localisation
class ICountry
{
    var name:String
    var location:CLLocationCoordinate2D
    
    init(name: String, location: CLLocationCoordinate2D) {
        self.name = name
        self.location = location
    }
}

///Classe pour chaque ville avec son nom et sa localisation
class City
{
    var name:String
    var location:CLLocationCoordinate2D
    
    init(name: String, location: CLLocationCoordinate2D) {
        self.name = name
        self.location = location
    }
}

///Struct pour chaque catégories avec son nom et un id pour bouclé plus facilement
struct Categorize:Identifiable
{
    let id = UUID()
    var name:String
}
