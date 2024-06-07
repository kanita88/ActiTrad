//
//  Data.swift
//  ActiTrad
//
//  Created by Apprenant 176 on 07/06/2024.
//

import SwiftUI

struct CustomColors {
    static let primaryColor = Color("ColorShading1")
    static let secondaryColor = Color("ColorShading2")
    static let gradient = LinearGradient(
        gradient: Gradient(colors: [primaryColor, secondaryColor]),
        startPoint: .top,
        endPoint: .bottom
    )
}

struct UserInfoFields: View {
    
    var fieldName: String
    var text: Binding<String>
    
    var body: some View {
        Text(fieldName)
        TextField("",text: text)
        .frame(width: 335, height: 40)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 3))
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.black, lineWidth: 1))
    }
}
