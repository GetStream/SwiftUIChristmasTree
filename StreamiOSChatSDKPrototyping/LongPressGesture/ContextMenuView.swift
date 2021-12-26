//
//  ContextMenuView.swift
//  Stream iOS Chat SDK Prototyping
//  Longpressing inbound message
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct ContextMenuView: View {
    
    let inboundBubbleColor = Color(#colorLiteral(red: 0.2419013083, green: 0.2265482247, blue: 0.2486716509, alpha: 1))
    
    var body: some View {
        ZStack {

            VStack(alignment: .leading) { // Container for Reactions, Inbound Message, Context Menu
                
                HStack(alignment: .bottom) {
                    Image("luke")
                    
                    VStack(alignment: .leading) {
                        ZStack(alignment: .bottomLeading) {
                            RoundedRectangle(cornerRadius: 21)
                                .frame(width: 120, height: 42)
                                .overlay(
                                    Text("Hey Hey!!!")
                                        .foregroundColor(.white)
                                )
                            Rectangle()
                                .frame(width: 20, height: 21)
                        }
                        // Inbound Message Bubble
                        .foregroundColor(inboundBubbleColor)
                            
                        Text("Is that Stream Chat?. Fabulous  18.37")
                            .font(.subheadline)
                        .foregroundColor(.secondary)
                    }
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
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
            .preferredColorScheme(.dark)
    }
}
}
