//
//  OutboundSingleLineView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct OutboundSingleLineView: View {
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    
    var body: some View {
            VStack(alignment: .trailing) {
                ZStack(alignment: .bottomTrailing) {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 144, height: 36)
                        .overlay(
                            Text("😅 😅 😅 😅")
                                .frame(width: 240, height: 56)
                                .foregroundColor(.white)
                        )
                    Rectangle()
                        .frame(width: 20, height: 21)
                }
                // Inbound Message Bubble
                .foregroundColor(inboundBubbleColor)
                    
                HStack(spacing: 4) { // Timestamp and read receipt
                    Text("82")
                        .foregroundColor(StreamBlue)
                    Image("readReceipt")
                    Text("18.37 PM")
                        .foregroundColor(.secondary)
                }
                .font(.footnote)
            }
            .contextMenu{
                Label("Reply", systemImage: "arrow.turn.up.left")
                Label("Tread Reply", systemImage: "arrowshape.turn.up.left.2")
                Label("Copy Message", systemImage: "doc.on.doc")
                Label("Edit Message", systemImage: "pencil")
                Label("Pin to conversation", systemImage: "pin.fill")
                Label("Delete Message", systemImage: "trash")
            }
    }
}

struct OutboundSingleLineView_Previews: PreviewProvider {
    static var previews: some View {
        OutboundSingleLineView()
            .preferredColorScheme(.dark)
    }
}
