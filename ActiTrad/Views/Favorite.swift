//
//  Favorite.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct Favorite: View {
    
    @State private var favoriteActi: [Country] = [
        
        Country(id: UUID(), title: "La Fromagerie", description: "Depuis 2004, le village fromagerie vous propose un concept unique. Vous découvrirez les ateliers fromager à travers un couloir de galeries vitrées, permettant de comprendre les différentes étapes de la fabrication des fromages normands. En fin de visite, profitez d'un moment dégustation !", picture: "cheese-platter", price: "20 euros", category: "Gastronomie", choice: false, adress: "42 Rue Général Leclerc 14140 Livarot", hourly: "De 9H30-13H et 14h-17H30", phonenumber: "02 31 48 20 10", time: "2 heures"),
        
        Country(id: UUID(), title: "Rencontre avec les Massaï", description: "Lors de votre voyage au kenya, profitez pour partir à la rencontre des Massaï peuple semi-nomade. Apprenez la vie du village: allumez un feu, traire les vaches, échangez autour d'u feu de camps et parfois même de partir à la découverte de la faune et la flore locale, en compagnie d'un guerrier Massaï.", picture: "indigenous-peoples", price: "10 euros", category: "Aventure", choice: false, adress: "Adresse communiqué sur place", hourly: "De 7h à 17h", phonenumber: "+254 076 45 78 09", time: "5 heures"),
        Country(id: UUID(), title: "Masques Vénitien", description: "Découvrez Venise et sa tradition en optant pour cette activité de fabrication de masque de carnaval.\nAvec Ca'Macana, fabriquez vous même votre masque en découvrant l'histoire d'un savoir faire unqiue.", picture: "venetian-mask", price: "35 euros", category: "Art", choice: false, adress: "Dorsoduro 3215\n30123 Venise", hourly: "De 10h à 20h", phonenumber: "+39 041 520 3229", time: "3 heures"),
        Country(id: UUID(), title: "La cérémonie du thé", description: "Bienvenue à Toko-An, pour une expérience exquise au coeur de la tradition japonaise. Entrez dans ce sanctuaire zen, où vous serez acceuillis par le maitre de thé, qui vous fera découvrir la cérémonie du thé Japonaise. Vous en ressortirez enrichi et détendu.", picture: "matcha", price: "24 euros", category: "Gastronomie", choice: false, adress: "Impérial hôtel 1 Chiyoda-Ku,Tokyo\n                100-8558, Japon", hourly: "De 9h à 17h", phonenumber: "+81 2 3539 8712", time: "20 minutes")
    ]
    
    @State var laNavigation = false
    @State var jeNavigue = false
    @State var tuNavigues = false
    @State var ilNavigue = false
    
    @State private var selecteBouton: Country? = nil
    @State private var isPresentingModal = false
    
    
    private func removeActi(at offsets: IndexSet) {
        favoriteActi.remove(atOffsets: offsets)
    }
    
    var body: some View {
       
            NavigationView {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color("ColorShading1"), Color("ColorShading2")]), startPoint: .topLeading, endPoint: .bottom)
                        .ignoresSafeArea()
                VStack {
                    
                    List {
                        
                        ForEach(favoriteActi) { acti in
                            HStack {
                                Text("\(acti.title)")
                                    .padding(10)
                                Spacer()
                                Button(action: {
                                    selecteBouton = acti
                                    isPresentingModal = true
                                }) {
                                    Image(systemName: "info.circle")
                                        .foregroundColor(.blue)
                                }
                                .buttonStyle(BorderlessButtonStyle())
                                .sheet(item: $selecteBouton) { acti in
                                    EmptyView()
                                }
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                    
                                }.buttonStyle(BorderlessButtonStyle())
                                
                                
                            }
                        } .onDelete(perform: removeActi)
                        
                        
                    }
                    .navigationTitle("Favoris")
                    .scrollContentBackground(.hidden)
                    .toolbar {
                        EditButton()
                    }
                }
            }
        }
        
    }
}

#Preview {
    Favorite()
}
