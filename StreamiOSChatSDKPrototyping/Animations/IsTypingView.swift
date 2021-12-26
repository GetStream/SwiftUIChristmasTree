//
//  IsTypingView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct IsTypingView: View {
    var messages: [ChannelListStructure] = []
    let notificationColor = Color(#colorLiteral(red: 1, green: 0.2156862745, blue: 0.2588235294, alpha: 1))
    let onlineColor = Color(#colorLiteral(red: 0.1254901961, green: 0.8784313725, blue: 0.4392156863, alpha: 1))
    var body: some View {
       
        VStack {
            HeaderView()
            IsTypingScaleView()
            IsTypingOpacityView()
            IsTypingOpacityScaleView()
            IsTypingPositionView()
            IsTypingPositionWithDelayView()
            IsTypingPositionOpacityView()
            IsTypingOpacityPositionScaleView()
            Spacer()
            TabBarView()
        }
    }
}

struct IsTypingView_Previews: PreviewProvider {
    static var previews: some View {
        IsTypingView()
            .preferredColorScheme(.dark)
    }
}
