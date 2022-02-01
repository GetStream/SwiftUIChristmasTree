//
//  ContentView.swift
//  Stream iOS Chat SDK Prototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct ChannelListView: View {
    
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    let notificationColor = Color(#colorLiteral(red: 1, green: 0.2156862745, blue: 0.2588235294, alpha: 1))
    let onlineColor = Color(#colorLiteral(red: 0.1254901961, green: 0.8784313725, blue: 0.4392156863, alpha: 1))
    let appBarColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    var messages: [ChannelListStructure] = []
    
    var body: some View {
        VStack {
            // Header view
            HeaderView()
            CustomSearchBarView()
            // Populating Message List
                List(messages) { item in
                    HStack {
                        ZStack(alignment: .topTrailing) {
                            Image(item.userAvatar)
                            //User status: Online or offline
                            Image(systemName: item.userStatus)
                                .font(.system(size: 12))
                                .foregroundColor(onlineColor)
                        }
                        
                        VStack(alignment: .leading){
                            Text("\(item.userName)")
                                .font(.body)
                            Text("\(item.userMessageSummary)")
                                .font(.footnote)
                                .lineLimit(1)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            // Number of unread messages
                            Image(systemName: item.unreadMessageCount)
                                .foregroundColor(notificationColor)
                                .font(.footnote)
                            HStack(spacing: 4) {
                                Image(item.receipt)
                                Text("\(item.timestamp)")
                                    .font(.footnote)
                                .foregroundColor(.secondary)
                            }
                        }
                    }
                }.listStyle(.plain)
                 .refreshable{
                        print("Pull to refresh")
                    }
            
           TabBarView()
            
        } // All Views
        .padding()
    }
}

struct ChannelListView_Previews: PreviewProvider {
    static var previews: some View {
            ChannelListView(messages: ChannelData)
                .preferredColorScheme(.dark)
    }
}

