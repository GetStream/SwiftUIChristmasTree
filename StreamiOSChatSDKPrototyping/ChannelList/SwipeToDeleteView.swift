//
//  SwipeToDeleteView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct SwipeToDeleteView: View {
    var messages: [ChannelListStructure] = []
    let notificationColor = Color(#colorLiteral(red: 1, green: 0.2156862745, blue: 0.2588235294, alpha: 1))
    let onlineColor = Color(#colorLiteral(red: 0.1254901961, green: 0.8784313725, blue: 0.4392156863, alpha: 1))
    var body: some View {
       
        VStack {
            HeaderView()
            CustomSearchBarView()
            List {
                    HStack {
                        ZStack(alignment: .topTrailing) {
                            Image("user_han")
                        }
                        
                        VStack(alignment: .leading){
                            Text("R2-V2")
                                .font(.body)
                            Text("This is awesome!!!")
                                .font(.footnote)
                                .lineLimit(1)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            // Number of unread messages
                            Image(systemName: "2.circle")
                                .foregroundColor(notificationColor)
                                .font(.footnote)
                            HStack(spacing: 4) {
                                Image("deliveredReceipt")
                                Text("Yeaterday")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }// List 1: Swipe action with mute and delete icons
                    .contextMenu{
                        Label("Reply", systemImage: "arrow.turn.up.left")
                        Label("Tread Reply", systemImage: "arrowshape.turn.up.left.2")
                        Label("Copy Message", systemImage: "doc.on.doc")
                        Label("Mute User", systemImage: "speaker.slash")
                    }
                    .swipeActions(allowsFullSwipe: false) {
                        Button(role: .destructive) {
                            print("Deleting conversation")
                        } label: {
                            Label("Delete", systemImage: "trash.fill")
                        }
                    
                        
                        Button {
                            print("Mute user")
                        } label: {
                            Label("Mute", systemImage: "speaker.slash")
                        }
                        .tint(.indigo)
                    }
                
                // List 2: Swipe action with text button
               
                    HStack {
                        ZStack(alignment: .topTrailing) {
                            Image("user_chew")
                            //User status: Online or offline
                            Circle()
                                .frame(width: 12, height: 12)
                                .foregroundColor(onlineColor)
                        }
                        
                        VStack(alignment: .leading){
                            Text("Test User Lando")
                                .font(.body)
                            Text("This is awesome!!!")
                                .font(.footnote)
                                .lineLimit(1)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            // Number of unread messages
                            Image(systemName: "2.circle")
                                .foregroundColor(notificationColor)
                                .font(.footnote)
                            HStack(spacing: 4) {
                                Image("readReceipt")
                                Text("Yeaterday")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .contextMenu{
                        Label("Reply", systemImage: "arrow.turn.up.left")
                        Label("Tread Reply", systemImage: "arrowshape.turn.up.left.2")
                        Label("Copy Message", systemImage: "doc.on.doc")
                        Label("Mute User", systemImage: "speaker.slash")
                    }
                    .swipeActions {
                        Button("Delete") {
                            print("Right on!")
                        }
                        .tint(.red)
                    }
            
                // List 3: Swipe actions for both left and right
                
                    HStack {
                        ZStack(alignment: .topTrailing) {
                            Image("user_luke")
                            
                            //User status: Online or offline
                            
                        }
                        
                        VStack(alignment: .leading){
                            Text("Amos Gyamfi")
                                .font(.body)
                            Text("This is awesome!!!")
                                .font(.footnote)
                                .lineLimit(1)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            // Number of unread messages
                            Image(systemName: "36.circle")
                                .foregroundColor(notificationColor)
                                .font(.footnote)
                            HStack(spacing: 4) {
                                Image("deliveredReceipt")
                                Text("Yeaterday")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                        }
                        
                    }
                    .swipeActions(edge: .leading) {
                        Button {
                            print("Pinn message")
                        } label: {
                            Label("", systemImage: "pin.fill")
                        }
                        .tint(onlineColor)
                    }
                    .swipeActions(edge: .trailing) {
                        Button(role: .destructive) {
                            print("Delete message")
                        } label: {
                            Label("Trash", systemImage: "trash.fill")
                        }
                    }
                
            }.listStyle(.plain)
            
            TabBarView()
        }
    }
}

struct SwipeToDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeToDeleteView(messages: ChannelData)
            .preferredColorScheme(.dark)
    }
}
