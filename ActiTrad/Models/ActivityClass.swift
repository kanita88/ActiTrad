//
//  ActivityClass.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 27/06/2024.
//

import Foundation

/// La classe `ActivityClass` est conforme aux protocoles `Identifiable` et `Observable`.
/// Cela permet de l'identifier de manière unique et de notifier les changements aux observateurs.

@Observable class ActivityClass : Identifiable {
    
    /// L'identifiant unique de l'activité.
    var id = UUID()
    
    /// Le nom de l'activité.
    var nameActivity : String
    
    /// La description de l'activité.
    var description : String
    
    /// Le prix de l'activité sous forme de chaîne de caractères.
    var price : String
    
    /// - Parameters:
        ///   - nameActivity: Le nom de l'activité.
        ///   - description: La description de l'activité.
        ///   - price: Le prix de l'activité.
    init(nameActivity: String, description: String, price: String) {
        self.nameActivity = nameActivity
        self.description = description
        self.price = price
        
    }
}
