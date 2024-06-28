//
//  EcranFiltrage.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//
import MapKit
import SwiftUI
import SwiftData


struct EcranFiiltrage: View {
    
    /// Variable pour les ForEach
    @State var selection:String = ""
    /// Variable pour le slider
    @State var priceBudget:Double = 0
    
    /// Tableau de tout les objets de class "Country"
    @State var tabCountry = [
        ICountry(name: "France", location: CLLocationCoordinate2D(latitude: 46.00, longitude: 2.00)),
        ICountry(name: "Itali", location: CLLocationCoordinate2D(latitude: 42.50, longitude: 12.50)),
        ICountry(name: "Thaïland", location: CLLocationCoordinate2D(latitude: 13.036597 , longitude: 101.492515)),
        ICountry(name: "Japon", location: CLLocationCoordinate2D(latitude: 34.886306, longitude: 134.379711))
    ]
    /// Tableau de tout les objets class "City"
    @State var tabCity =
    [
        City(name: "Paris", location: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)),
        City(name: "Rome", location: CLLocationCoordinate2D(latitude: 35.682194, longitude: 139.762221)),
        City(name: "Bangkok", location: CLLocationCoordinate2D(latitude: 41.918639657910816, longitude: 12.483113871917714)),
        City(name: "Tokyo", location:  CLLocationCoordinate2D(latitude: 13.761229251291944, longitude: 100.52529107842545))
    ]
    
    /// Tableau de tout les objets struct  "Catégorize"
    @State var tabCategorize =
    [
        Categorize(name: "Catégorie 1"),
        Categorize(name: "Catégorie 2"),
        Categorize(name: "Catégorie 3"),
        Categorize(name: "Catégorie 4"),
        Categorize(name: "Catégorie 5"),
    ]
    
    var body: some View {
        
        NavigationStack
        {
            ZStack
            {
                Color(.colorOrangePallette)
                VStack
                {
                    Text("FIilter")
                        .font(.system(size: 40))
                        .padding(.bottom)
                        .padding(.leading, -150)
                    
                  
                    ///Liste Déroulante avec tout les object class "Country"
                    pickerListCountry(arrayName: tabCountry, nameList: "Country", selection: $selection)
                    ///Liste Déroulante avec tout les object class "City"
                    pickerListCity(arrayName: tabCity, nameList: "City", selection: $selection)
                    ///Liste Déroulante avec tout les object struc "Catégorize"
                    pickerList(arrayName: tabCategorize, nameList: "Categorize", selection: $selection)
                    
                    
                    
                    
                    ///Slider pour le budget
                    VStack
                    {
                        Text("Budget \(priceBudget, specifier: "%.0f") $")
                        
                        
                        HStack
                        {
                            Text("$")
                            Slider(value: $priceBudget, in :0...500 )
                                .frame(width: 280)
                                .accentColor(Color(.yellow))
                            Text("$$$")
                        }
                    }
                    .padding(.top,40)
                    
                    
                    //Boutton d'actions
                    HStack(spacing : 50)
                    {
                        NavigationLink(destination :MaScreen())
                        {
                            
                            ZStack
                            {
                                Rectangle()
                                    .foregroundStyle(Color(.blue))
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                    .frame(width: 100,height: 50)
                                Text("Accept")
                                    .foregroundStyle(Color(.white))
                            }
                        }
                        
                        //Boutton valider
                        /*Button(action:
                         {
                         /for country in tabCountry
                         {
                         if country.name == String(selection)
                         {
                         
                         }
                         }
                         
                         },
                         label:
                         
                         { /*le contenu dans la navigation link*/
                         ZStack
                         {
                         Rectangle()
                         .foregroundStyle(Color(.blue))
                         .clipShape(RoundedRectangle(cornerRadius: 5))
                         .frame(width: 100,height: 50)
                         Text("Accept")
                         .foregroundStyle(Color(.white))
                         }
                         })*/
                        //Boutton Annuler
                        Button(action:
                                {/*Changer button par navigation link*/},
                               
                               label:
                                
                                {/*le contenu dans la navigation link*/
                            ZStack
                            {
                                Rectangle()
                                    .foregroundStyle(Color(.blue))
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
}



/// La structure pour instencité directement une liste avec un picker
struct pickerList:View
{
    var arrayName:[Categorize] = []
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
                    ForEach(arrayName, id: \.name)
                    {
                        arrayName in Text(arrayName.name)
                    }
                    
                }
                .accentColor(.black)
                .frame(maxWidth: 220, alignment: .leading)
            }
        }
    }
}

/// La structure pour instencité directement une liste avec un picker
struct  pickerListCountry:View
{
    var arrayName:[ICountry]
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
                    ForEach(arrayName, id: \.name)
                    {
                        Text($0.name)
                        //savePos = $0.location
                        
                    }
                    
                }
                .accentColor(.black)
                .frame(maxWidth: 220, alignment: .leading)
            }
        }
    }
}
/// La structure pour instencité directement une liste avec un picker
struct  pickerListCity:View
{
    var arrayName:[City]
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
                    ForEach(arrayName, id: \.name)
                    {
                        arrayName in Text(arrayName.name)
                    }
                    
                }
                .accentColor(.black)
                .frame(maxWidth: 220, alignment: .leading)
            }
        }
    }
}

/*struct  pickerListCategorize:View
{
    var arrayName:[Categorize]
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
                    ForEach(arrayName, id: \.id)
                    {
                        arrayName in Text(arrayName.name)
                    }
                    
                }
                .accentColor(.black)
                .frame(maxWidth: 220, alignment: .leading)
            }
        }
    }
}*/
#Preview {
    EcranFiiltrage()
    // .modelContainer(for: Item.self, inMemory: true)
}
