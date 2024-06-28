//
//  UserInfoFields.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 26/06/2024.
//

import SwiftUI

/**
 Documentation de la structure UserInfoFields
 
 Cette strucutre crée un champ de texte pour permettre à un utilisateur de rentrer ses informations personnelles
 
 */
struct UserInfoFields: View {
    /// Nom du champ de texte
    var fieldName: String
    /// Texte écrit par l'utilisateur
    var text: Binding<String>
    /// Vue SwiftUI qui affiche le TextField
    var body: some View {
        Text(fieldName)
        TextField("",text: text)
        .frame(width: 335, height: 40)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 3))
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.black, lineWidth: 1))
    }
}

/**
 Documentation de la structure SecureFields
 
 Cette strucutre crée un champ de texte pour permettre à un utilisateur de rentrer son mot de passe crypté
 
 */
struct SecureFields: View {
    /// Nom du securefield
    var fieldName: String
    /// Texte écrit par l'utilisateur
    var text: Binding<String>
    /// Vue SwiftUI qui affiche le securefield
    var body: some View {
        Text(fieldName)
        SecureField("",text: text)
        .frame(width: 335, height: 40)
        .background(RoundedRectangle(cornerRadius: 3) .fill(.white) .stroke(Color.black, lineWidth: 1))
    }
}
