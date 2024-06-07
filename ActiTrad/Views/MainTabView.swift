//
//  MainTabView.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct MainTabView: View {

    var isConnected: Bool = false
    
    var body: some View {
        TabView {
            MaScreen()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Log_In()
                .tabItem {
                    Label("Favorite", systemImage: "heart")
                }
            if isConnected == true {
                    EmptyView()
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
