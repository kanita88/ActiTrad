//
//  ActivityExample.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 08/06/2024.
//

import SwiftUI

struct ActivityExample: View {
    var body: some View {
        NavigationStack{
            ZStack{
                CustomColors.gradient
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("Nos activités")
                        .font(.system(size: 40))
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 130)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding()
                        HStack{
                            Image("fromage")
                                .resizable()
                                .frame(width: 170, height: 120)
                                .cornerRadius(15)
                            Text(Fromagerie.title)
                                .frame(width: 170, height: 200)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 130)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding()
                        HStack{
                            Image("indigenous-peoples")
                                .resizable()
                                .frame(width: 170, height: 120)
                                .cornerRadius(15)
                            Text(Massaï.title)
                                .frame(width: 170, height: 200)
                        }
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 130)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding()
                        HStack{
                            Image("Masque_Venitien")
                                .resizable()
                                .frame(width: 170, height: 120)
                                .cornerRadius(15)
                            Text(Masque.title)
                                .frame(width: 170, height: 200)
                        }
                    }
                    
                    NavigationLink {
                        Log_In()
                    }label: {
                        Text("Suivant")
                    }.tint(.black)
                }
           
                
            }
        }
    }
}

#Preview {
    ActivityExample()
}
