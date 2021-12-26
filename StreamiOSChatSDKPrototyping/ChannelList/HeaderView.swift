//
//  ChatsView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        // Channel List Header
            HStack { // Horizontal parent container
                Image("hamburger")
                Spacer()
                Text("Stream Chat")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Image("start-conversation-icon")
            }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .preferredColorScheme(.dark)
    }
}
