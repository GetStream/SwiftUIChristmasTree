//
//  CustomSearchBarView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by Amos from getstream.io on 14.10.2021.
//

import SwiftUI

struct CustomSearchBarView: View {
    
    @State private var searchChannel = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(.systemGray6))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search Channel", text: $searchChannel)
                }
                .padding(.leading, 12)
            }
            .frame(height: 40)
            .cornerRadius(20)
            .padding()
        }
    }

struct CustomSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBarView()
            .preferredColorScheme(.dark)
    }
}
