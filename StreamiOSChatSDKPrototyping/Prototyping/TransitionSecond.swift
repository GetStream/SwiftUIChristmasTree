//
//  BasicStructureView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct TransitionSecond: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
                    Button("Press to show details") {
                        withAnimation {
                            showDetails.toggle()
                        }
                    }

                    if showDetails {
                        Text("Details go here.")
                    }
                }
    }
}

struct TransitionSecond_Previews: PreviewProvider {
    static var previews: some View {
        TransitionSecond()
            .preferredColorScheme(.dark)
    }
}
