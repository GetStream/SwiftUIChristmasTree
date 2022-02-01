//
//  InboundTrippleLineView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct InboundTrippleLineView: View {
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image("user_chew")
                .resizable()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 290, height: 76)
                        .overlay(
                            Text("It is - 70s and clear. I’m 14 miles away, could hear it. Live look out my window")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                                .frame(width: 258, height: 76)
                                
                        )
                    Rectangle()
                        .frame(width: 20, height: 21)
                }
                // Inbound Message Bubble
                .foregroundColor(inboundBubbleColor)
                    
                Text("Rocket time  21.00 PM")
                    .font(.footnote)
                .foregroundColor(.secondary)
            }
        }.contextMenu{
            Label("Reply", systemImage: "arrow.turn.up.left")
            Label("Tread Reply", systemImage: "arrowshape.turn.up.left.2")
            Label("Copy Message", systemImage: "doc.on.doc")
            Label("Edit Message", systemImage: "pencil")
            Label("Pin to conversation", systemImage: "pin.fill")
            Label("Delete Message", systemImage: "trash")
        }
       
    }
}

struct InboundTrippleLineView_Previews: PreviewProvider {
    static var previews: some View {
        InboundTrippleLineView()
            .preferredColorScheme(.dark)
    }
}
