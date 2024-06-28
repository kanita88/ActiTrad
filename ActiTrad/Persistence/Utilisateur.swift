//
//  Utilisateur.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 26/06/2024.
//

import Foundation

/**
 Documentation de la classe Utilisateur
 
 Cette classe défini un utilisateur qui possède plusieurs attributs
 
 */

class Utilisateur: ObservableObject, CustomStringConvertible {
    /// Id de l'utilisateur
   @Published var id = UUID()
    /// Nom d'utilisateur
   @Published var userName: String
    /// Mot de passe de l'utilisateur
   @Published var password: String
    /// Propriété calculée pour définir le status de l'utilisateur
   @Published var status: Bool
    /// Propriété calculée pour écrire une phrase à l'appel de la classe
    var description: String {
        return "id: \(id) Nom d'utilisateur: \(userName) Mot de passe: \(password)"
    }
    
    /**
     Initialise une instance de `Utilisateur` avec des valeurs spécifiques.

     - Parameters:
       - userName: Le nom d'utilisateur
       - modèle: Le mot de passe de l'utilisateur
       - status: Le statut de l'utilisateur
     */
    init(userName: String, password: String, status: Bool) {
        self.userName = userName
        self.password = password
        self.status = status
    }
}
