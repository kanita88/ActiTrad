//
//  ContentView.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 03/06/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    

    var body: some View {
        Text("Hello")
    }
}

#Preview {
    MainLogoView()
        .modelContainer(for: Item.self, inMemory: true)
}
