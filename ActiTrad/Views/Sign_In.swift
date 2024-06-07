//
//  Sign_In.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct Sign_Up: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var verifyPassword: String = ""
    @State private var readyToNavigate: Bool = false
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColors.gradient
                    .ignoresSafeArea(edges: .top)
                VStack {
                    VStack(spacing: 10) {
                        Text("Bienvenue sur ACTITRAD")
                            .font(.title)
                        Text("Le meilleur outil pour trouver des activités locales")
                    }
                    .padding(.bottom, 60)
                    
                    VStack {
                    VStack (alignment: .leading){
                        // Appel de la structure qui défini les TextField (voir fichier "Data")
                        UserInfoFields(fieldName: "Nom", text: $userName)
                        UserInfoFields(fieldName: "Mot de Passe", text: $password)
                        UserInfoFields(fieldName: "Vérifier le mot de passe", text: $verifyPassword)
                    }
                        
                        Group {
                            Button {
                                
                                // Appel de la fonction errorMessage
                                
                                errorMessages()
                            } label: {
                                Text("S'inscrire")
                                    .frame(width: 335, height: 36)
                                    .background(Color("ColorButton_Log_In"))
                                    .foregroundStyle(.white)
                            }
                            .navigationDestination(isPresented: $readyToNavigate) {
                                EmptyView()
                            }
                            .alert(errorMessage, isPresented: $showError) {                 // Affiche le message correspondant par rapport aux conditions remplis ou non de la fonction errorMessage
                            }
                            .padding()
                        }
                        
                        HStack {
                            Text("Vous avez déjà un compte ?")
                            NavigationLink(destination: Log_In()) {
                                Text("Connexion")
                                    .foregroundStyle(.blue)
                                    .underline(true, color: .blue)
                            }
                        }
                        .padding(.bottom, 100)
                    }        // Fin seconde Vstack
                }           // Fin VStack principale
            }              //Fin ZStack
        }                 // Fin NavigationStack
    }
}

extension Sign_Up {
    
    // Fonction qui change le message de l'alerte en fonction des champs qui ont été remplies ou non
    
    private func errorMessages() {
        if userName.isEmpty {
            errorMessage = "Nom d'utilisateur requis"
            showError = true
        } else if password.isEmpty {
            errorMessage = "Mot de passe requis"
            showError = true
        } else if verifyPassword.isEmpty {
            errorMessage = "Veuillez vérifier votre mot de passe"
            showError = true
        } else if password != verifyPassword {
            errorMessage = "Les mots de passe ne correspondent pas"
            showError = true
        } else {
            readyToNavigate = true
        }
    }
}

#Preview {
    Sign_Up()
}
