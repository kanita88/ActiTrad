//
//  ActivityVe.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct ActivityVe: View {
    var body: some View {
        ZStack {
            CustomColors.gradient
                .ignoresSafeArea()
            
            VStack{
               
                Image("venetian-mask")
                    .resizable()
                    .frame(width: 300, height: 200)
                
                        Text(Masque.title)
                    .font(.system(size: 30))
                    .bold()
               
                        Text(Masque.description)
                    .font(.system(size: 20))
                    .padding()
                Text(Masque.hourly)
                HStack{
                    Text(Masque.time)
                    Text(Masque.price)
                }
                Text(Masque.adress)
                Text(Masque.phonenumber)
                    
                 
                
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
