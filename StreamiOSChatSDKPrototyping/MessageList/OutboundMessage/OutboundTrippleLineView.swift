//
//  OutboundTrippleLineView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct OutboundTrippleLineView: View {
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    
    var body: some View {
            VStack(alignment: .trailing) {
                ZStack(alignment: .bottomTrailing) {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 290, height: 76)
                        .overlay(
                            Text("But 🚀 ! Is this in Florida?. It is - 70s and clear. I’m 14 miles away, could hear it. 😅 😅 😅 😅")
                                .frame(width: 268, height: 76)
                                .foregroundColor(.white)
                        )
                    Rectangle()
                        .frame(width: 20, height: 21)
                }
                // Inbound Message Bubble
                .foregroundColor(inboundBubbleColor)
                    
                HStack(spacing: 4) { // Timestamp and read receipt
                    Text("24")
                        .foregroundColor(StreamBlue)
                    Image("readReceipt")
                    Text("11.00 AM")
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
                    .foregroundColor(Color.red)
            }
    }
}

struct OutboundTrippleLineView_Previews: PreviewProvider {
    static var previews: some View {
        OutboundTrippleLineView()
            .preferredColorScheme(.dark)
    }
}
