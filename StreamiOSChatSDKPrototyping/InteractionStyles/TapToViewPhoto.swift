//
//  TapToViewPhoto.swift
//  StreamiOSChatSDKPrototyping
//  Tapping an image message bubble expands to fill the center of the screen

//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct TapToViewPhoto: View {
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
            
            Spacer()
            
            VStack {
                Text("Count Dooku") // Follows Human Interface Guidelines
                    .font(.headline)
                .fontWeight(.bold)
                
                Text("Last seen one hour ago")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image("user_luke")
                .resizable()
                .frame(maxWidth: 36, maxHeight: 36)
                
        }
        .font(.title2)
    }
}

struct TapToViewPhoto_Previews: PreviewProvider {
    static var previews: some View {
        TapToViewPhoto()
            .preferredColorScheme(.dark)
    }
}
