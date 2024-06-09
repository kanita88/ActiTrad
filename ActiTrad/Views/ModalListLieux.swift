//
//  ModalListLieux.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct ModalListLieux: View {
    @State var show = false
    @State var lorem = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin viverra quam ut sapien feugiat pretium. Mauris at neque augue. Suspendisse potenti.
"""
    var body: some View {
        List
        {
          
               ScrollView
                {
                    VStack(spacing :50)
                     {
                         Spacer()
                         lieux(nomLieux: "Fromagerie", description: lorem)
                         lieux(nomLieux: "Fromagerie", description: lorem)
                         lieux(nomLieux: "Fromagerie", description: lorem)
                     }
                }
                //.padding(.leading, -170)
        
        }
    }
}



struct lieux: View {
    var nomLieux:String
    var description:String
    //var imagesArray:[String] = []
    
    var body: some View {
        
        VStack(alignment: .leading)
        {
            ZStack
            {
                Rectangle()
                    .foregroundStyle(Color(.black))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width : 150,height: 150)
               Image("fromage")
            }
            Text(nomLieux)
                .font(.system(size: 25))
            HStack
            {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15,height: 15)
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15,height: 15)
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15,height: 15)
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15,height: 15)
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15,height: 15)
            }
            .foregroundStyle(Color(.yellow))
            
            
            Text(description)
                .font(.system(size: 13))
            
            HStack
            {
                //Button Call
                Button(action: {/*Changer par une navigation link*/}, label:
                        {/*le contenu dans la navigation link*/
                    
                    ZStack
                    {
                        Rectangle()
                            .foregroundStyle(Color(.blue))
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
                            .foregroundStyle(Color(.blue))
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
                            .foregroundStyle(Color(.blue))
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
            
            
            
            //*********************
        }
    }
}
#Preview {
    
    ModalListLieux()
}
