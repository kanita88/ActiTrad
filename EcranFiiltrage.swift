//
//  EcranFiiltrage.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 03/06/2024.
//

import SwiftUI
import SwiftData

struct EcranFiiltrage: View {
    
    
    let arrayCountry = ["France","Espagne","Sénégal","Mali","Inde","Japon"]
    let arrayCity = ["Paris","Madrid","Dakar","Tombouctou","Tokyo","Bangkok","Rome"]
    let arrayCategorize = ["Categorize1","Categorize2","Categorize3"]
    @State var priceBudget:Double = 0
    @State private var selection = ""
    
    var body: some View {
        
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: [.colorBackgroundGradian1,.colorBackgroundGradian2]), startPoint: .top, endPoint: .bottom)
            
           
            VStack
            {
                Text("FIilter")
                    .font(.system(size: 40))
                    .padding(.bottom)
                    .padding(.leading, -150)
                //Liste Déroulante
                pickerList(arrayName: arrayCountry, nameList: "Country", selection: $selection)
                pickerList(arrayName: arrayCity, nameList: "City", selection: $selection)
                pickerList(arrayName: arrayCategorize, nameList: "Categorize", selection: $selection)
                
                
                //Slider
                VStack
                {
                    Text("Budget \(priceBudget, specifier: "%.0f") $")
                        
                    HStack
                    {
                        Text("$")
                        Slider(value: $priceBudget, in :0...500 )
                            .frame(width: 280)
                            .accentColor(Color(.colorBackgroundGradian1))
                        Text("$$$")
                    }
                }
                .padding(.top,40)
                
                
                
                //Boutton d'actions
                HStack(spacing : 50)
                {
                    //Boutton valider
                    Button(action:
                            {/*Changer button par navigation link*/},
                           label:
                            
                            { /*le contenu dans la navigation link*/
                        ZStack
                        {
                            Rectangle()
                                .foregroundStyle(Color(.colorBlueButton))
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .frame(width: 100,height: 50)
                            Text("Accept")
                                .foregroundStyle(Color(.white))
                            
                        }
                        })
                    //Boutton Annuler
                    Button(action:
                            {/*Changer button par navigation link*/},
                           
                           label:
                            
                            {/*le contenu dans la navigation link*/
                        ZStack
                        {
                            Rectangle()
                                .foregroundStyle(Color(.colorBlueButton))
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .frame(width: 100,height: 50)
                            Text("Cancel")
                                .foregroundStyle(Color(.white))
                            
                        }
                        })
                }.padding(.top, 50)
                
            }
            
        }.ignoresSafeArea()
        
    }
}




struct pickerList:View
{
    var arrayName:[String] = []
    var nameList:String
    @Binding var selection:String
    
    var body : some View
    {
        VStack(alignment : .leading)
        {
            Text(nameList)
                .font(.system(size: 20))
                .frame(maxWidth: 250, alignment: .leading)
            //.frame(width: 50,height: 50)
        }
        
        
        VStack
        {
            
          
            ZStack{
               Rectangle()
                    .foregroundStyle(Color(.white))
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .frame(width: 250,height: 50)
                
                
                
                
                Picker(nameList, selection: $selection)
                {
                    
                    ForEach(arrayName, id: \.self)
                    {
                        Text($0)
                            .foregroundStyle(Color(.black))
                            
                    }
                    
                }
                .accentColor(.black)
                .frame(maxWidth: 220, alignment: .leading)
                
                
                
                
                
            }
           
            
            
        }
        
        
        //mzlejfmlsegjmozegjfmogz
        
    }
    
    
    
    
    
}

#Preview {
    EcranFiiltrage()
        .modelContainer(for: Item.self, inMemory: true)
}
