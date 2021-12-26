//
//  TransitionsTest.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct TransitionsTest: View {
    @State var show = false
    var body: some View {
        /*ZStack {
            if !show {
                Image("user_lando")
            } else {
                VStack { Image("user_luke") }
                .transition(.offset(x: 300, y: 300))
                
            }
        }
        .onTapGesture {
            show.toggle()
        }*/
        
        ZStack {
                    if !show {
                        Text("View Transition")
                            .padding()
                            .background(Capsule().stroke())
                    } else {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.blue)
                            .padding()
                            .transition(.move(edge: .trailing))
                            .zIndex(1)
                    }
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
    }
}

struct TransitionsTest_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsTest()
            .preferredColorScheme(.dark)
    }
}
