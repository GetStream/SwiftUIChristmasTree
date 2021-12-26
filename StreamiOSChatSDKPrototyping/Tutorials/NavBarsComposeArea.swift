//
//  NavBarsComposeArea.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct NavBarsComposeArea: View {
    
    var body: some View {
        VStack {
           HeaderView()
           Spacer()
           ComposeAreaView()
           TabBarView()
        } // All Views
    }
}

struct NavBarsComposeArea_Previews: PreviewProvider {
    static var previews: some View {
        NavBarsComposeArea()
            .preferredColorScheme(.dark)
    }
}
