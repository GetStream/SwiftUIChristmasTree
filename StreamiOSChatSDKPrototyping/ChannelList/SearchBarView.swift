//
//  SearchBarView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchChannel = ""
    let channelNames = ["Grace", "", "Francesco", "Amos", "Jared", "Martin", "Craig", ]
    
    var body: some View {
        if #available(iOS 15.0, *) {
            NavigationView {
                Text("")
            }
            .searchable(text: $searchChannel, prompt: "Search channel")
        } else {
            // Fallback on earlier versions
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .preferredColorScheme(.dark)
    }
}
