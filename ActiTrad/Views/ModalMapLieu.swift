//
//  ModalMapLieu.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct ModalMapLieu: View {
    
    @State var show = false
    var body: some View {
        
        Button("Clique")
        {
            show = true
        }.sheet(isPresented: $show, content: {
            
            
                VStack
            {
                
                VStack(alignment: .leading)
                {
                    
                    Text("nomLieux")
                        .font(.system(size: 30))
                    HStack
                    {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                    }
                    .foregroundStyle(Color(.yellow))
                    Text("TypeLieux")
                    
                    HStack
                    {
                        //Button Call
                        Button(action: {/*Changer par une navigation link*/}, label:
                                {/*le contenu dans la navigation link*/
                            
                            ZStack
                            {
                                Rectangle()
                                    .foregroundStyle(Color("ColorButtons"))
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .frame(width : 100, height: 30)
                                HStack
                                {
                                    Image(systemName: "phone.fill")
                                    Text("Call")
                                }
                                .foregroundColor(Color(.white))
                                
                            }
                        })
                        
                        //Button Save
                        Button(action: {/*Changer par une navigation link*/}, label:
                                {/*le contenu dans la navigation link*/
                            
                            ZStack
                            {
                                Rectangle()
                                    .foregroundStyle(Color("ColorButtons"))
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .frame(width : 100, height: 30)
                                HStack
                                {
                                    Image(systemName: "bookmark.fill")
                                    Text("Save")
                                }
                                .foregroundColor(Color(.white))
                                
                            }
                        })
                        
                        
                        //Button Itinerary
                        Button(action: {/*Changer par une navigation link*/}, label:
                                {/*le contenu dans la navigation link*/
                            
                            ZStack
                            {
                                Rectangle()
                                    .foregroundStyle(Color("ColorButtons"))
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .frame(width : 100, height: 30)
                                HStack
                                {
                                    Image(systemName: "map.fill")
                                    Text("Call")
                                }
                                .foregroundColor(Color(.white))
                                
                            }
                        })
                    }
                    
                }
                .padding(.leading, -20)
                .presentationDetents([.height(600)])
                /*Text("zoeigozejfpgezml")
                 .frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(.blue.opacity(0.2))
                 .presentationDetents([.height(500)])*/
                
                Image("fromage")
                    .resizable()
                    .frame(width: 350,height: 200)
                
                
                VStack(alignment: .leading)
                {
                   //adresse
                    HStack
                    {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "mappin")
                                .foregroundStyle(Color("ColorButtons"))
                            Text("Adresse")
                                .foregroundStyle(Color("ColorButtons"))
                            
                        })
                    }
                    Divider()
                    //horaire
                    HStack
                    {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "clock")
                                .foregroundStyle(Color("ColorButtons"))
                            Text("Horaire")
                                .foregroundStyle(Color("ColorButtons"))
                            
                        })
                    }
                    Divider()
                    HStack
                    {
                        Button(action: {}, label: {
                            Image(systemName: "globe.europe.africa.fill")
                                .foregroundStyle(Color("ColorButtons"))
                            Text("Site web")
                                .foregroundStyle(Color("ColorButtons"))
                            
                        })
                    }
                }.padding(.leading, 30)
                    .padding(.top,30)
                
            }
            .frame(width: 400,height: 600)
            .background(Color("ColorShading2"))
               
            })
            
        }
                
        }
                
                
                
                
                #Preview {
            ModalMapLieu()
        }
