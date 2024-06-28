//
//  Favorite.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct FavorisClasse: View {
    
    /// classe Favoris qui permet d'observer les objets
    class Favoris: ObservableObject {
        /// Affiche les éléments du tableau
        @Published var favoriteActi: [Country] = []
        /// Permet de sélectionner le bouton
        @Published var selecteBouton: Country? = nil
        /// Permet de présenter la vue modale
        @Published var isPresentingModal = false
        
        init(selecteBouton: Country? = nil, isPresentingModal: Bool = false) {
            self.selecteBouton = selecteBouton
            self.isPresentingModal = isPresentingModal
        }
    }
    /// Propriété d'état du bouton
    @State private var selecteBouton: Country? = nil
    /// Propriété d'état pour la présentation de la vue modale
    @State private var isPresentingModal = false
    
    /// Fonction pour supprimer une activité
    func removeActi(at offsets: IndexSet) {
        favoriteActi.remove(atOffsets: offsets)
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("ColorShading1"), Color("ColorShading2")]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    List {
                        /// Permet d'afficher les éléments dans la liste
                        ForEach(favoriteActi) { acti in
                            HStack {
                                Text("\(acti.title)")
                                    .padding(10)
                                Spacer()
                                /// Bouton permettant d'afficher la vue modale des activités
                                Button(action: {
                                    self.selecteBouton = acti
                                    self.isPresentingModal = true
                                }) {
                                    Image(systemName: "info.circle")
                                        .foregroundColor(.blue)
                                }
                                .buttonStyle(BorderlessButtonStyle())
                                .sheet(item: self.$selecteBouton) { acti in
                                    ActivityvueModal(acti: acti)
                                        .sheet(item: $selecteBouton) { acti in
                                            ActivityvueModal(acti: acti)
                                        }
                                    Button(action: {
                                    }) {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                        
                                    }.buttonStyle(BorderlessButtonStyle())
                                    
                                }
                            }.onDelete(perform: removeActi)
                            
                            
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
}
#Preview {
    FavorisClasse()
}

