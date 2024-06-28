//
//  ModelFunc.swift
//  ActiTrad
//
//  Created by Apprenant 163 on 26/06/2024.
//

import Foundation
import MapKit


//les struct passent en classe et deviennent une sous classe pour un tableau de la classe parent

//les sous classe héritent telle de ObservableObject
class filter
{
    
}

class ICountry
{
    var name:String
    var location:CLLocationCoordinate2D
    
    init(name: String, location: CLLocationCoordinate2D) {
        self.name = name
        self.location = location
    }
}


class City
{
    var name:String
    var location:CLLocationCoordinate2D
    
    init(name: String, location: CLLocationCoordinate2D) {
        self.name = name
        self.location = location
    }
}


struct Categorize:Identifiable
{
    let id = UUID()
    var name:String
}
