//
//  SplashAnimation.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct SplashAnimation: View {
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    
    // 1. Initial Animation States
    @State private var move = false
    @State private var swing = false
    @State private var splash = false
    
    var body: some View {
        if #available(iOS 15.0, *) {
            ZStack {
                StreamBlue
                    .opacity(0.25)
                    .ignoresSafeArea()
                ZStack {
                    
                    // 4. Logo: Splash Animation (scale and opacity)
                    Image("streamLogo")
                        .scaleEffect(0.6)
                        .scaleEffect(splash ? 40 : 1)
                        .opacity(splash ? 0 : 1)
                        .rotationEffect(.degrees(swing ? -10 : 10), anchor: swing ? .bottomLeading : .bottomTrailing)
                        .offset(y: -15)
                        
                    VStack(spacing: -46) {
                        
                        // 3. Top Wave: Horizontal Motion
                        Image("stream_wave")
                            .opacity(splash ? 0 : 1)
                            .offset(y: 20)
                            .offset(x: move ? -180 : 180)
                        
                        // 2. Bottom Wave: Horizontal Motion
                        Image("stream_wave")
                            .opacity(splash ? 0 : 1)
                            .offset(y: 10)
                            .offset(x: move ? -150 : 150)
                            .onAppear {
                                withAnimation(.easeInOut(duration: 1).repeatCount(8, autoreverses: true)){
                                    swing.toggle()
                                }
                                
                                withAnimation(.linear(duration: 4).speed(0.5)){
                                    move.toggle()
                                }
                                
                                withAnimation(.easeInOut(duration: 0.25).delay(8)){
                                    splash.toggle()
                                }
                            }
                    }
                    .mask(Image("wave_top").opacity(0.9))
                }
                // Change size here
                .scaleEffect(2)
            }
    
        } else {
            // Fallback on earlier versions
        }
    }
}

struct SplashAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SplashAnimation()
    }
}
