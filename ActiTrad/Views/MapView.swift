//
//  MapView.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 05/06/2024.
//

import SwiftUI
import MapKit

struct Location : Identifiable {
    var id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    var locations = [
        Location(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.85803, longitude: 2.294631)),
        Location(name: "Tokyo", coordinate: CLLocationCoordinate2D(latitude: 35.682194, longitude: 139.762221)),
        Location(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.918639657910816, longitude: 12.483113871917714)),
        Location(name: "Bangkok", coordinate: CLLocationCoordinate2D(latitude: 13.761229251291944, longitude: 100.52529107842545))
    ]
    @State private var position : MapCameraPosition = .automatic
    @State private var searchTerm = ""
    @State private var selectedLocation: Location? = nil
    @State private var showPopover = false
    @State private var showModal = false
    
    //cherche un endroit sur le map
    var filteredLocations: [Location] {
            if searchTerm.isEmpty {
                return locations
            } else {
                return locations.filter { $0.name.lowercased().contains(searchTerm.lowercased()) }
            }
        }
    
    var body: some View {
        ZStack {
            //boucle sur locations et afficher le marker dans le map
            Map(position: $position) {
                ForEach(locations) { location in
                    Marker(location.name, coordinate: location.coordinate)
                }
            }
            
            VStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                    //barre de recherche par textField
                    TextField("chercher votre activités", text: $searchTerm)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 40))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.top)
                .padding(.bottom, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button(action: {
                            showModal.toggle()
                        }) {
                            Label("Thé", systemImage: "mug.fill")
                                .buttonStyle(.plain)
                                .padding(8)
                                .background(Color.colorButton)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }
                        .sheet(isPresented: $showModal) {
                            Text("à compléter merci")
                                .presentationDetents([.medium, .large])
                        }
                        
                        Button(action: {
                            showModal.toggle()
                        }) {
                            Label("Fromagerie", systemImage: "heart.fill")
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color.colorButton)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                            
                        }
                        
                        Button(action: {
                            showModal.toggle()
                        }) {
                            Label("Masque", systemImage: "theatermasks")
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color.colorButton)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }
                        
                        Button(action: {
                            showModal.toggle()
                        }) {
                            Label("Masai", systemImage: "flame.fill")
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color.colorButton)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }
                        
                        Button(action: {
                            //page filtre
                        }) {
                            Label("Plus", systemImage: "plus.app.fill")
                                .buttonStyle(.plain)
                                .padding(10)
                                .background(Color.colorButton)
                                .foregroundColor(.white)
                                .clipShape(Capsule())
                        }
                        
                    }
                }
                .padding(.horizontal)
                .padding(.bottom)
                Spacer()
                
            }
            
        }
    }
}


#Preview {
    MapView()
}
