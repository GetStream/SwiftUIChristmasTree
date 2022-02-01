//
//  InboundDoubleLineView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct InboundDoubleLineView: View {
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    @State private var isTyping = false
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image("luke")
                .resizable()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 236, height: 56)
                        .overlay(
                            Text("Ladies and gentlemen, we have liftoff")
                                .frame(width: 240, height: 56)
                                .foregroundColor(.white)
                        )
                    Rectangle()
                        .frame(width: 20, height: 21)
                }
                // Inbound Message Bubble
                .foregroundColor(inboundBubbleColor)
                    
                /*Text("is typing")
                    .font(.footnote)
                    .foregroundColor(.secondary)*/
                HStack {
                    
                        HStack(spacing: 4) {
                            Circle()
                                .frame(width: 6, height: 6)
                                .opacity(isTyping ? 1 : 0.1)
                                .offset(y: isTyping ? 2.5 : -2.5)
                                .animation(.easeOut(duration: 1).repeatForever(autoreverses: true), value: isTyping)
                            Circle()
                                .frame(width: 6, height: 6)
                                .opacity(isTyping ? 1 : 0.1)
                                .offset(y: isTyping ? 2.5 : -2.5)
                                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isTyping)
                            Circle()
                                .frame(width: 6, height: 6)
                                .opacity(isTyping ? 1 : 0.1)
                                .offset(y: isTyping ? 2.5 : -2.5)
                                .animation(.easeIn(duration: 1).repeatForever(autoreverses: true), value: isTyping)
                        }
                        .onAppear{
                            isTyping.toggle()
                        }
                    
                    Text("is typing")
                        .font(.footnote)
                        .lineLimit(1)
                        .foregroundColor(.secondary)
                }
            }
        }
        .contextMenu{
            Label("😅 😅 😅 😅", systemImage: "")
            Label("Reply", systemImage: "arrow.turn.up.left")
            Label("Tread Reply", systemImage: "arrowshape.turn.up.left.2")
            Label("Copy Message", systemImage: "doc.on.doc")
            Label("Edit Message", systemImage: "pencil")
            Label("Pin to conversation", systemImage: "pin.fill")
            Label("Delete Message", systemImage: "trash")
        }
       
    }
}

struct InboundDoubleLineView_Previews: PreviewProvider {
    static var previews: some View {
        InboundDoubleLineView()
            .preferredColorScheme(.dark)
    }
}
