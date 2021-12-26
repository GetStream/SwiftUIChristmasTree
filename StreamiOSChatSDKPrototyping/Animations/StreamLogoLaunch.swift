//
//  StreamLogoLaunch.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct StreamLogoLaunch: View {
    @State private var move = false
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    @State private var swinging = false
    var body: some View {
        if #available(iOS 15.0, *) {
            ZStack {
                StreamBlue
                    .opacity(0.25)
                    .ignoresSafeArea()
                ZStack {
                    
                    Image("STREAMMARK")
                        .scaleEffect(0.6)
                        .rotationEffect(.degrees(swinging ? -10 : 10), anchor: swinging ? .bottomLeading : .bottomTrailing)
                        .offset(y: -15)
                        .animation(.easeInOut(duration: 1).repeatCount(14, autoreverses: true), value: swinging)
                    VStack(spacing: -46) {
                        ZStack {
                            Image("stream_wave")
                                .offset(y: 20)
                                .offset(x: move ? -160 : 160)
                            .animation(.linear(duration: 14), value: move)
                        }
                        Image("stream_wave")
                            .offset(y: 10)
                            .offset(x: move ? -150 : 150)
                            .animation(.linear(duration: 14), value: move)
                            .task {
                                move.toggle()
                                swinging.toggle()
                            }
                    }
                    .mask(Image("wave_top"))
                }
                // Change size here
                .scaleEffect(2)
            }
            //.clipShape(Circle()
                        //.trim(from: 1/2, to: 1)
                       
            //)// All Views
            
        } else {
            // Fallback on earlier versions
        }
    }
}

struct StreamLogoLaunch_Previews: PreviewProvider {
    static var previews: some View {
        StreamLogoLaunch()
            //.preferredColorScheme(.dark)
    }
}