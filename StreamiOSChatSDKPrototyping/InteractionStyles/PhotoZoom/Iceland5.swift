//
//  SecondImage.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos from getstream.io on 30.1.2022.
//

import Foundation

import SwiftUI

struct Iceland5: View {

    @State private var unzoomed = true
    @Namespace private var morphSeamlessly
    
    var body: some View {
        ZStack{
            if unzoomed {
                Image("iceland3")
                    .resizable()
                    .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                    .frame(width: 126, height: 94)
                    .frame(width: 126, height: 94)
                    .zIndex(5)
                    .onTapGesture {
                        withAnimation(.easeInOut)
                        {
                            unzoomed = false
                        }
                    }
               
            } else {
                Image("iceland3")
                    .resizable()
                    .matchedGeometryEffect(id: "morph", in: morphSeamlessly)
                    .frame(width: unzoomed ? 0 : .infinity, height: .infinity)
                    .zIndex(5)
                    .preferredColorScheme(.dark)
                    .onTapGesture {
                        withAnimation(.easeInOut)
                        {
                            unzoomed = true
                        }
                    }
            }
        } // All view
    }
}

struct Iceland5_Previews: PreviewProvider {
    static var previews: some View {
        Iceland5()
            .preferredColorScheme(.dark)
    }
}
