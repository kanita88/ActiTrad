//
//  ActivityFr.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct ActivityvueModal: View {
    /// Déclaration de la variable qui récupère le tableau Country
    var acti: Country
    var body: some View {
        
        ZStack{
            CustomColors.gradient
            
            VStack{
                
                Image(acti.picture)
                    .resizable()
                    .frame(width: 300, height: 200)
                
                Text(acti.title)
                    .font(.system(size: 30))
                    .bold()
                
                Text(acti.description)
                    .font(.system(size: 20))
                    .padding()
                Text(acti.hourly)
                HStack{
                    Text(acti.time)
                    Text(acti.price)
                }
                Text(acti.adress)
                Text(acti.phonenumber)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Réserver")
                }).tint(.white)
                    .padding()
            }
        }
    }
}

#Preview {
    ActivityVe()
}
