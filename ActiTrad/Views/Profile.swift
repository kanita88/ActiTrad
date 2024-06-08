//
//  Profile.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct Profile: View {
    
    let items = ["Mes informations personnelles", "Mes paiements", "Mes réservations", "Réglages"]
    let systemImages = ["person", "creditcard", "calendar.badge.clock", "gearshape"]

        var body: some View {
            NavigationStack {
                ZStack {
                    CustomColors.gradient
                        .ignoresSafeArea(edges: .top)
                    VStack {
                            ZStack {
                                Circle()
                                    .foregroundStyle(.white.opacity(0.5))
                                    .frame(width: 200, height: 130)
                                
                                Image("PhotoDeProfil")
                            }
                        Text("Greg")
                        List (items.indices, id: \.self) { index in
                            HStack {
                                Image(systemName: self.systemImages[index])
                                Text(self.items[index])
                                Spacer()
                                Image(systemName: "arrowshape.turn.up.right")
                            }
                            .font(.custom("Arial", size: 18))
                            .padding(.vertical, 10)
                            .listRowBackground(Color.white.opacity(0.0))
                        }
                        .scrollContentBackground(.hidden)
                    }
                    .padding(.vertical, 100)
                }
            }
        }
}

#Preview {
    Profile()
}
