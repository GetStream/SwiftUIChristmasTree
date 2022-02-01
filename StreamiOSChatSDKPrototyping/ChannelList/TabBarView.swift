//
//  TabBarView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        ZStack {
            TabView {
                
                if #available(iOS 15.0, *) {
                    MentionsView()
                        .tabItem {
                            Label("Chats", image: "message_icon")
                        }
                        .badge(82)
                
                        
                    MentionsView()
                        .tabItem {
                        Label("Mentions", systemImage: "at")
                    }
                        .badge(1)
                } else {
                    // Fallback on earlier versions
                }
                       
                }
            }.frame(width: .infinity, height: 73)
                
        }
    }

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .preferredColorScheme(.dark)
    }
}
