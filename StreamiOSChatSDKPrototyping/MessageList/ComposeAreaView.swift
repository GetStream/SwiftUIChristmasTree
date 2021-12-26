//
//  ComposeAreaView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct ComposeAreaView: View {
    
    let composeAreaBackground = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    let darkDisabled = Color(#colorLiteral(red: 0.2980392157, green: 0.3215686275, blue: 0.3607843137, alpha: 1))
    @State private var composeText = "Send a message"
    
    var body: some View {
        ZStack(alignment: .top) {
            HStack {
                Button {
                    print("Attachment/Paperclip")
                } label: {
                    Image(systemName: "paperclip")
                        .renderingMode(.original)
                        .foregroundColor(darkDisabled)
                }
                Button {
                    print("Bolt")
                } label: {
                    Image(systemName: "bolt.fill")
                        .foregroundColor(darkDisabled)
                }
                
                TextField("Send a message", text: $composeText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 0))
                    .background(composeAreaBackground)
                    .cornerRadius(20)
                    .padding()
                    
                Button {
                    print("Send")
                } label: {
                    Image(systemName: "arrow.forward.circle.fill")
                        .renderingMode(.original)
                        .foregroundColor(darkDisabled)
                }
            } // Compose Area
            .padding()
            .frame(width: .infinity, height: 75)
            
            Rectangle()
                .frame(width: .infinity, height: 1)
                .foregroundColor(Color(.systemGray3))
        }
    }
}

struct ComposeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeAreaView()
            .preferredColorScheme(.dark)
    }
}
