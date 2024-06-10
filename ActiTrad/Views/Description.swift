//
//  Description.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct Description: View {
    //@Binding var alertDone: Int
    
    var body: some View {
        NavigationStack{
            ZStack{
                CustomColors.gradient
                    .ignoresSafeArea()
                VStack{
                    
                    Text("Bienvenue")
                        .font(.system(size: 42))
                        .padding(90)
                    
                    Text("Avec ACTITRAD, vivez la tradition ! Voyagez pour découvrir les cultures locales et apprenez-en plus sur les pays et leur coutumes.\nNous vous proposons des activités hors du commun, afin de côtoyer les locaux lors de vos découvertes et de vivre de belles aventures en toute sécurité.")
                        .controlSize(.extraLarge)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 27))
                        .padding()
                    Spacer()
                    
                    NavigationLink {
                        ActivityExample()
                    }label: {
                        Text("Suivant")
                    }.tint(.black)
                }
            }
            
        }
        
    }
}

#Preview {
    Description()
}
