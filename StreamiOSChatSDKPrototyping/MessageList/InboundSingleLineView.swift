//
//  InboundSingleLineView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct InboundSingleLineView: View {
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image("user_han")
                .resizable()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 200, height: 36)
                        .overlay(
                            Text("They ain’t in space yet")
                                .foregroundColor(.white)
                        )
                    Rectangle()
                        .frame(width: 20, height: 21)
                }
                // Inbound Message Bubble
                .foregroundColor(inboundBubbleColor)
                    
                Text("Space Cadet  9.01 AM")
                    .font(.footnote)
                .foregroundColor(.secondary)
            }
        }
       
    }
}

struct InboundSingleLineView_Previews: PreviewProvider {
    static var previews: some View {
        InboundSingleLineView()
            .preferredColorScheme(.dark)
    }
}
