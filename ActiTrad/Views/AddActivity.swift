//
//  AddActivity.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 26/06/2024.
//

import SwiftUI

/// Une vue permettant d'ajouter de nouvelles activités.
///
/// La vue `AddActivity` permet à l'utilisateur de saisir le nom, la description et le prix d'une activité,
/// puis de l'ajouter à une liste d'activités. Les champs de saisie sont réinitialisés après chaque ajout.

struct AddActivity: View {
    
    /// Un tableau d'activités ajoutées.
    @State var activityAdd : [ActivityClass] = []
    
    /// Le nom de l'activité en cours de saisie.
    @State private var nameActivity : String = ""
    
    /// La description de l'activité en cours de saisie.
    @State private var description : String = ""
    
    /// Le prix de l'activité en cours de saisie.
    @State private var price: String = ""

    /// Note: Cette vue utilise un `VStack` pour organiser son contenu verticalement et un `Form` pour le formulaire d'ajout.
    var body: some View {
        VStack {
            Form {
                Text("Ajouter une activité : ")
                    .font(.title)
                TextField("Nom activitée", text: $nameActivity)
                    .textFieldStyle(.roundedBorder)
                TextField("Description" , text: $description)
                    .textFieldStyle(.roundedBorder)
                TextField("Prix en Euros" , text: $price)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: {
                    submit()
                }) {
                    Text("Ajouter")
                }
                .padding()
                .foregroundStyle(.white)
                .background(Color("ColorButtons"))
                .clipShape(Capsule())
                .padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 0))
            }
            .scrollContentBackground(.hidden)
            .background(CustomColors.gradient)
            
            NavigationStack {
                List {
                    Text("Information sur l'activité : ")
                        .font(.title)
                    ForEach(activityAdd) { tabs in
                        HStack {
                            Text("Activité : ")
                                .font(.title2)
                            Image(systemName: "trash.circle")
                                .padding(EdgeInsets(top: 0, leading: 200, bottom: 0, trailing: 0))
                        }
                        Text("Nom activitée : \(tabs.nameActivity)")
                        Text("Description : \(tabs.description)")
                        Text("Prix en euros : \(tabs.price)")
                        Divider()
                            .frame(height: 2)
                            .background(.indigo)
                            .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 18))
                    }.onDelete { indexSet in
                        activityAdd.remove(atOffsets: indexSet)
                    }
                    
                }
                .scrollContentBackground(.hidden)
                .background(CustomColors.gradient)
                .ignoresSafeArea()
            }
            
        }
        .background(CustomColors.gradient)
        
    }

    /// La méthode `submit` crée une nouvelle instance de `ActivityClass` avec les valeurs saisies,
    /// l'ajoute au tableau `activityAdd` et réinitialise les champs de saisie.
    
    func submit(){
        let newItem = ActivityClass(nameActivity: nameActivity, description: description, price: price)
        activityAdd.append(newItem)
        nameActivity = ""
        description = ""
        price = ""
        
    }
}

#Preview {
    AddActivity()
}
