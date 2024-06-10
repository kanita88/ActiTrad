//
//  MainLogoView.swift
//  ActiTrad
//
//  Created by Apprenant 172 on 05/06/2024.
//

import SwiftUI

struct MainLogoView: View {
    @State var degreesRotating = 0.0
    @State var isShowing = false
    //@Binding var animationDone: Int
    
    var body: some View {
        NavigationStack
        {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("ColorShading1"), Color("ColorShading2")]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Text("ACTITRAD")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Image("globeterre")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 170)
                        .rotationEffect(.degrees(degreesRotating))
                    
                    Text("Vivre la tradition ! ")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .onAppear {
                    withAnimation(.linear(duration: 1)
                        .speed(0.1).repeatForever(autoreverses: false)) {
                            degreesRotating = 360.0
                        }
                }
                
                VStack {
                    
                    Image(systemName: "airplane")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .rotationEffect(.degrees(-50)) //pour faire tourner avion
                        .frame(width: 70, height: 70)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.teal, .indigo],
                                startPoint: .top,
                                endPoint: .bottom
                            ))
                        .offset(x: (isShowing ? 100 : -100), y: (isShowing ? -200 : 0))
                        .animation(.smooth(duration: 3).repeatForever(autoreverses: false), value: isShowing)
                }
                .onAppear {
                    isShowing.toggle()
                }
                //            .onTapGesture {
                //                animationDone = 1
                //            }
                Spacer()
                
                NavigationLink(destination: Description())
                {
                    HStack
                    {
                        
                    }
                    .buttonStyle(.plain)
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
                    
                    
                    
                }
                
            }
        }
        
        
    }
}

#Preview {
    MainLogoView()
}
