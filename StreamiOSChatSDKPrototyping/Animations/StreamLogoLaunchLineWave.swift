//
//  StreamLogoLaunchLineWave.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct StreamLogoLaunchLineWave: View {
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    @State private var swing = false
    @State private var move = false
    @State private var moveUp = false
    @State private var propel = false
    let left = UIScreen.main.bounds.width
    let up = UIScreen.main.bounds.height
    
    var body: some View {
        
            ZStack {
                StreamBlue
                    .opacity(0.25)
                    .ignoresSafeArea()
                VStack(spacing: -4) {
                Image("STREAMMARK")
                    .rotationEffect(.degrees(swing ? -10 : 10), anchor: swing ? .bottomLeading : .bottomTrailing)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: swing)
                    .offset(x: propel ? left/2: -left/2)
                
                    ZStack {
                        Image("wave_filled")
                            .opacity(0.25)
                            .offset(x: move ? 100 : -400)
                            .animation(.linear(duration: 20).speed(3).repeatForever(autoreverses: false), value: swing)
                        
                        Image("wave_filled")
                            .opacity(0.25)
                            .offset(x: move ? -400 : 400)
                            .animation(.linear(duration: 20).speed(3).repeatForever(autoreverses: false), value: swing)
                    }
                
            }
            .offset(y: moveUp ? -up: up + 200)
            .onAppear {
                swing.toggle()
                move.toggle()
                
                withAnimation(.easeInOut(duration: 20).repeatForever(autoreverses: false)){
                    propel.toggle()
                }
                
                withAnimation(.easeInOut(duration: 20).repeatForever(autoreverses: false)){
                    moveUp.toggle()
                }
        }
            }
    }
}

struct StreamLogoLaunchLineWave_Previews: PreviewProvider {
    static var previews: some View {
        StreamLogoLaunchLineWave()
           
    }
}
