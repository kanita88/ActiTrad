//
//  MainTabView.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State var isConnected: Bool = true
    
    var body: some View {
        TabView {
            MaScreen()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            if isConnected == true {
                Favorite()
                    .tabItem {
                        Label("Favorite", systemImage: "heart")
                    }
            } else {
                Connection()
                    .tabItem {
                        Label("Favorite", systemImage: "heart")
                    }
            }
            if isConnected == true {
                    Profile()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            } else {
                Connection()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
        }
    }
}

#Preview {
    MainTabView()
}
