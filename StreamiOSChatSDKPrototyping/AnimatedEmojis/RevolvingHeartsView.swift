//
//  RevolvingHeartsView.swift
//  RevolvingHearts
//
//  Created by Amos Gyamfi from getstream on 23.11.2021.
//

import SwiftUI

struct RevolvingHeartsView: View {
    
    @State private var revolving = false
    
    var body: some View {
       
        VStack {
            VStack(spacing: 50) {
                ZStack {
                    ZStack {
                        Image("circular")
                        Image("heart_top")
                            // Rotation Mode: Do not rotate on path
                            .rotationEffect(.degrees(revolving ? -360 : 360))
                            .offset(x: 10, y: -20)
                            
                        Image("heart_bottom")
                            // Rotation Mode: Do not rotate on path
                            .rotationEffect(.degrees(revolving ? -360 : 360))
                            .offset(x: -25, y: 20)
                                
                    } // Circular
                    .rotationEffect(.degrees(revolving ? 360 : -360))
                    //.rotation3DEffect(.degrees(15), axis: (x: 3, y: 1, z: 0))
                    .animation(.easeInOut(duration: 5).repeatForever(autoreverses: false), value: revolving)
                    .offset(x: 12.5, y: -20)
                    .onAppear {
                            revolving.toggle()
                    }
                }
            }
        }
            
    }
}

struct RevolvingHeartsView_Previews: PreviewProvider {
    static var previews: some View {
        RevolvingHeartsView()
            .preferredColorScheme(.dark)
    }
}
