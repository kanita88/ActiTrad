//
//  Log_In.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct Log_In: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var readyToNavigate: Bool = false
    @State private var showError: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColors.gradient
                    .ignoresSafeArea(edges: .top)
                VStack (alignment:.leading){
                    
                    // Appel de la structure qui défini les TextField (voir fichier "Data")
                    
                    UserInfoFields(fieldName: "Nom", text: $userName)
                    UserInfoFields(fieldName: "Mot de Passe", text: $password)
                    
                    NavigationLink (destination: Connection()) {
                        Text("Mot de passe oublié ?")
                            .foregroundStyle(.blue)
                            .underline(true, color: .blue)
                    }
                    .frame(width: 166, height: 16)
                    .padding(.leading, 170)
                    
                    Group {
                        Button {
                            // Vérifie si le "Nom" et le "MdP" ont été saisis, si non montre une erreur si oui active le "navigationDestination"
                            guard !userName.isEmpty && !password.isEmpty else {
                                showError = true
                                return
                            }
                            readyToNavigate = true
                            // Variables qui modifie sa valeur Booléenne pour activer ou non le "navigationDestination"
                        } label: {
                            Text("Se connecter")
                                .frame(width: 335, height: 36)
                                .background(Color("ColorButtons"))
                                .foregroundStyle(.white)
                        }
                        .navigationDestination(isPresented: $readyToNavigate) {
                            MainTabView()
                        }
                        .alert("Nom d'utilisateur et mot de de passe requis", isPresented: $showError) {
                            // Montre une erreur quand on appuie sur le bouton si les conditions de celui-ci ne sont pas remplis
                        }
                    }
                    
                    Text("OU")
                        .padding()
                        .padding(.horizontal, 140)
                    
                    Group {
                        // Bouton (rectangle en fait) Se connecter avec Google
                        RoundedRectangle(cornerRadius: 3)
                            .frame(width: 335, height: 36)
                            .foregroundStyle(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.black, lineWidth: 1))
                            .overlay(
                                HStack {
                                    Image("logo_Google")
                                        .resizable()
                                        .frame(width: 16, height: 16)
                                    Text("Se connecter avec Google")
                                }
                            )       // Fin overlay
                        // Bouton (rectangle en fait) Se connecter avec Google
                        
                        // Bouton (rectangle en fait) Se connecter avec Apple
                        RoundedRectangle(cornerRadius: 3)
                            .frame(width: 335, height: 36)
                            .foregroundStyle(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.black, lineWidth: 1))
                            .overlay(
                                HStack {
                                    Image("logo_Apple")
                                        .resizable()
                                        .frame(width: 30, height: 16)
                                    Text("Se connecter avec Apple")
                                }
                            )           // Fin overlay
                        // Bouton (rectangle en fait) Se connecter avec Apple
                    }
                    
                    HStack {
                        Text("Vous n'avez pas de compte ?")
                        NavigationLink (destination: Sign_In()) {
                            Text("S'enregistrer")
                                .foregroundStyle(.blue)
                                .underline(true, color: .blue)
                        }   // Fin NavigationLink
                    }      // Fin HStack
                }         // Fin VStack
            }            // Fin ZStack
        }               // Fin NavigationStack
    }
}

#Preview {
    Log_In()
}
