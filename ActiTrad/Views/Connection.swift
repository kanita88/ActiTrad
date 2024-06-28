//
//  Connection.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct Connection: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    CustomColors.gradient
                        .ignoresSafeArea(edges: .top)
                    VStack {
                        VStack (spacing: 10){
                            Image("Masque_Venitien")
                                .padding(.bottom, 40)
                            HStack(spacing: 60){
                                Image("La Fronce")
                                Image("Thé_Jap")
                            }
                            Spacer()
                            HStack(spacing: 30) {
                                Image("Henné")
                                Image("Plaine_Aride")
                                    .padding(.bottom, 80)
                            }
                        }
                        
                        VStack {
                            Text("Pour consulter vos Favoris ou votre profil \n       Connectez-vous ou inscrivez-vous")
                            
                            NavigationLink(destination : Log_In())
                            {
                                Text("Se connecter")
                                    .frame(width: 335, height: 36)
                                    .background(Color("ColorButtons"))
                                    .foregroundStyle(.white)
                            }
                            
                            NavigationLink(destination : Sign_In())
                            {
                                Text("Créer un compte")
                                    .frame(width: 335, height: 36)
                                    .background(.white)
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding(.bottom, 50)
                    }           // Fin VStack
                    .padding(.top, 10)
                    
                }               // Fin ZStack
            }
        }                      // Fin NavigationStack
    }
}

#Preview {
    Connection()
}
