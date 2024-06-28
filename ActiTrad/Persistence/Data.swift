//
//  Data.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct Activity:Identifiable{
    var id = UUID()
     var title: String
     var description: String
     var picture: String
     var price: String
     var category: String
     var choice: Bool
     var adress: String
     var hourly: String
     var phonenumber: String
     var time: String
}

struct Country: Identifiable {
    var id: UUID
    var title: String
    var description: String
    var picture: String
    var price: String
    var category: String
    var choice: Bool
    var adress: String
    var hourly: String
    var phonenumber: String
    var time: String
    
}
var favoriteActi: [Country] = [
    Country(id: UUID(), title: "La Fromagerie", description: "Depuis 2004, le village fromagerie vous propose un concept unique. Vous découvrirez les ateliers fromager à travers un couloir de galeries vitrées, permettant de comprendre les différentes étapes de la fabrication des fromages normands. En fin de visite, profitez d'un moment dégustation !", picture: "cheese-platter", price: "20 euros", category: "Gastronomie", choice: false, adress: "42 Rue Général Leclerc 14140 Livarot", hourly: "De 9H30-13H et 14h-17H30", phonenumber: "02 31 48 20 10", time: "2 heures"),
    
    Country(id: UUID(), title: "Rencontre avec les Massaï", description: "Lors de votre voyage au kenya, profitez pour partir à la rencontre des Massaï peuple semi-nomade. Apprenez la vie du village: allumez un feu, traire les vaches, échangez autour d'u feu de camps et parfois même de partir à la découverte de la faune et la flore locale, en compagnie d'un guerrier Massaï.", picture: "indigenous-peoples", price: "10 euros", category: "Aventure", choice: false, adress: "Adresse communiqué sur place", hourly: "De 7h à 17h", phonenumber: "+254 076 45 78 09", time: "5 heures"),
    Country(id: UUID(), title: "Masques Vénitien", description: "Découvrez Venise et sa tradition en optant pour cette activité de fabrication de masque de carnaval.\nAvec Ca'Macana, fabriquez vous même votre masque en découvrant l'histoire d'un savoir faire unqiue.", picture: "venetian-mask", price: "35 euros", category: "Art", choice: false, adress: "Dorsoduro 3215\n30123 Venise", hourly: "De 10h à 20h", phonenumber: "+39 041 520 3229", time: "3 heures"),
    Country(id: UUID(), title: "La cérémonie du thé", description: "Bienvenue à Toko-An, pour une expérience exquise au coeur de la tradition japonaise. Entrez dans ce sanctuaire zen, où vous serez acceuillis par le maitre de thé, qui vous fera découvrir la cérémonie du thé Japonaise. Vous en ressortirez enrichi et détendu.", picture: "matcha", price: "24 euros", category: "Gastronomie", choice: false, adress: "Impérial hôtel 1 Chiyoda-Ku,Tokyo\n                100-8558, Japon", hourly: "De 9h à 17h", phonenumber: "+81 2 3539 8712", time: "20 minutes")
]


var Fromagerie = Activity(title: "La Fromagerie", description: "Depuis 2004, le village fromagerie vous propose un concept unique. Vous découvrirez les ateliers fromager à travers un couloir de galeries vitrées, permettant de comprendre les différentes étapes de la fabrication des fromages normands. En fin de visite, profitez d'un moment dégustation !", picture: "cheese-platter", price: "20 euros", category: "Gastronomie", choice: false, adress: "42 Rue Général Leclerc 14140 Livarot", hourly: "De 9H30-13H et 14h-17H30", phonenumber: "02 31 48 20 10", time: "2 heures")

var Massaï = Activity(title: "Rencontre avec les Massaï", description: "Lors de votre voyage au kenya, profitez pour partir à la rencontre des Massaï peuple semi-nomade. Apprenez la vie du village: allumez un feu, traire les vaches, échangez autour d'u feu de camps et parfois même de partir à la découverte de la faune et la flore locale, en compagnie d'un guerrier Massaï.", picture: "indigenous-peoples", price: "10 euros", category: "Aventure", choice: false, adress: "Adresse communiqué sur place", hourly: "De 7h à 17h", phonenumber: "+254 076 45 78 09", time: "5 heures")

var Masque = Activity(title: "Masques Vénitien", description: "Découvrez Venise et sa tradition en optant pour cette activité de fabrication de masque de carnaval.\nAvec Ca'Macana, fabriquez vous même votre masque en découvrant l'histoire d'un savoir faire unqiue.", picture: "venetian-mask", price: "35 euros", category: "Art", choice: false, adress: "Dorsoduro 3215\n30123 Venise", hourly: "De 10h à 20h", phonenumber: "+39 041 520 3229", time: "3 heures")

var Tea = Activity(title: "La cérémonie du thé", description: "Bienvenue à Toko-An, pour une expérience exquise au coeur de la tradition japonaise. Entrez dans ce sanctuaire zen, où vous serez acceuillis par le maitre de thé, qui vous fera découvrir la cérémonie du thé Japonaise. Vous en ressortirez enrichi et détendu.", picture: "matcha", price: "24 euros", category: "Gastronomie", choice: false, adress: "Impérial hôtel 1 Chiyoda-Ku,Tokyo 100-8558, Japon", hourly: "De 9h à 17h", phonenumber: "+81 2 3539 8712", time: "20 minutes")



