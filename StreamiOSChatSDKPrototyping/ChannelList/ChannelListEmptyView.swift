//
//  SelectUserListView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct ChannelListEmptyView: View {
    
    @State private var blinkLeftEye = true
    @State private var blinkRightEye = true
    @State private var trimMouth = false
    @State private var shake = false
    
    let emptyChatColor = Color(#colorLiteral(red: 0.2997708321, green: 0.3221338987, blue: 0.3609524071, alpha: 1))
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            VStack {
                if #available(iOS 15.0, *) {
                    ZStack {
                        Image("emptyChatDark")
                            .rotationEffect(.degrees(shake ? -5 : 5), anchor: .bottomTrailing)
                        VStack {
                            HStack(spacing: 16) {
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 8, height: 4)
                                    .scaleEffect(y: blinkRightEye ? 0.1 : 1)
                                    .opacity(blinkRightEye ? 0.1 : 1)
                                RoundedRectangle(cornerRadius: 2)
                                    .frame(width: 8, height: 4)
                                    .scaleEffect(y: blinkLeftEye ? 0.05 : 1)
                            }
                            Circle()
                                .trim(from: trimMouth ? 0.5 : 0.6, to: trimMouth ? 0.9 : 0.8)
                                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                                .frame(width: 16, height: 16)
                                .rotationEffect(.degrees(200))
                        }.foregroundColor(emptyChatColor)
                            .rotationEffect(.degrees(shake ? -5 : 5), anchor: .bottomLeading)
                    }
                    .task {
                        withAnimation(.easeInOut(duration: 1).repeatForever()){
                            blinkRightEye.toggle()
                        }
                        
                        withAnimation(.easeOut(duration: 1).repeatForever()){
                            blinkLeftEye.toggle()
                        }
                        withAnimation(.easeOut(duration: 1).repeatForever()){
                            trimMouth.toggle()
                        }
                        
                        withAnimation(.easeOut(duration: 1).repeatForever()){
                            shake.toggle()
                        }
                    }
                } else {
                    // Fallback on earlier versions
                }
                
                
                Text("Let’s start chatting!")
                    .font(.body)
                Text("How about sending your first message to a friend?")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    
            }
            Spacer()
            TabView {
                MentionsView()
                        .tabItem {
                            Label("Chats", image: "message_icon")
                        }
                        
                    MentionsView()
                        .tabItem {
                        Label("Mentions", systemImage: "at")
                    }
            }.frame(width: .infinity, height: 73)
        } // All Views
    }
}

struct ChannelListEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelListEmptyView()
            .preferredColorScheme(.dark)
    }
}
