//
//  ActivityJp.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct ActivityJp: View {
    var body: some View {
        ZStack {
            CustomColors.gradient
                .ignoresSafeArea()
            
            VStack{
               
                   Image("matcha")
                    .resizable()
                    .frame(width: 300, height: 200)
                
                        Text(Tea.title)
                    .font(.system(size: 30))
                    .bold()
               
                        Text(Tea.description)
                    .font(.system(size: 20))
                    .padding(10)
                Text(Tea.hourly)
                HStack{
                    Text(Tea.time)
                    Text(Tea.price)
                }
                Text(Tea.adress)
                    .font(.system(size: 15))
                   
    
                Text(Tea.phonenumber)
               
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Réserver")
                }).tint(.white)
                    .padding()
            }
        }
    }
}

#Preview {
    ActivityJp()
}
