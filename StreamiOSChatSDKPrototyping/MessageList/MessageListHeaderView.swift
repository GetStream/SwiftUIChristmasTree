//
//  MessageListHeaderView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct MessageListHeaderView: View {
    
    let composeAreaBackground = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let darkDisabled = Color(#colorLiteral(red: 0.2980392157, green: 0.3215686275, blue: 0.3607843137, alpha: 1))
    @State private var composeText = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Spacer()
                VStack {
                    Text("Akua Serwaa Bonsu")
                        .font(.headline)
                    Text("SpaceX Crew-16 Launch")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image("user_chew")
                    .resizable()
                    .frame(width: 36, height: 36)
            } // Compose Area
            .padding()
            .frame(width: .infinity, height: 75)
            
            
            Rectangle()
                .frame(width: .infinity, height: 1)
                .foregroundColor(Color(.systemGray3))
        }
    }
}

struct MessageListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListHeaderView()
            .preferredColorScheme(.dark)
    }
}
