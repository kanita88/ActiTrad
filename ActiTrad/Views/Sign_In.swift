//
//  Sign_In.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct Sign_In: View {
    
    @State private var users: [Utilisateur] = []
    @State private var userName = ""
    @State private var password = ""
    @State private var verifiedPassword = ""
    @State private var navigateToNewView = false
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    var status: Bool = false
    var userAlreadyExists: Bool {
              return users.contains { $0.userName == userName }
          }
    var isButtonDisabled: Bool {
        return userName.isEmpty || verifiedPassword.isEmpty || password.isEmpty || verifiedPassword != password
    }
    
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
                    
                    VStack (alignment: .leading){
                        UserInfoFields(fieldName: "Nom d'utilisateur", text: $userName)
                        
                        SecureFields(fieldName: "Mot de Passe", text: $password)
                            
                        SecureFields(fieldName: "Vérifier le mot de passe", text: $verifiedPassword)
                    }
                    Button {
                        errorMessages()
                        
                        if !userName.isEmpty && !password.isEmpty && verifiedPassword == password && !userAlreadyExists {
                            let newAccount = Utilisateur(userName: userName, password: password, status: true)
                            users.append(newAccount)
                            userName = ""
                            password = ""
                            verifiedPassword = ""
                            navigateToNewView = true
                            print(users, newAccount.status)
                        }
                    } label: {
                        Text("S'inscrire")
                            .frame(width: 335, height: 36)
                            .background(Color("ColorButtons"))
                            .foregroundStyle(.white)
                    }
                    .alert(errorMessage, isPresented: $showError) {                 // Affiche le message correspondant par rapport aux conditions remplis ou non de la fonction errorMessage
                    }
                    
                    .navigationDestination(isPresented: $navigateToNewView) {
                        MainTabView()
                            .navigationBarBackButtonHidden(true)
                    }
                    .padding()
                    
                    HStack {
                        Text("Vous avez déjà un compte ?")
                        NavigationLink(destination: Log_In()) {
                            Text("Connexion")
                                .foregroundStyle(.blue)
                                .underline(true, color: .blue)
                        }
                    }
                    .padding(.bottom, 100)
                }
            }
        }
    }

}

extension Sign_In {
    
    // Fonction qui change le message de l'alerte en fonction des champs qui ont été remplies ou non
    
    private func errorMessages() {
        if userName.isEmpty {
            errorMessage = "Nom d'utilisateur requis"
            showError = true
        } else if password.isEmpty {
            errorMessage = "Mot de passe requis"
            showError = true
        } else if verifiedPassword.isEmpty {
            errorMessage = "Veuillez vérifier votre mot de passe"
            showError = true
        } else if password != verifiedPassword {
            errorMessage = "Les mots de passe ne correspondent pas"
            showError = true
        } else {
            navigateToNewView = true
        }
    }
}

#Preview {
    Sign_In()
}
