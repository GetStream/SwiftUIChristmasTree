//
//  BasicStructureView.swift
//  StreamiOSChatSDKPrototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct TransitionThird: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
                    Button("Press to show details") {
                        withAnimation {
                            showDetails.toggle()
                        }
                    }

                    if showDetails {
                        // Moves in from the bottom
                        Text("Details go here.")
                            .transition(.move(edge: .bottom))

                        // Moves in from leading out, out to trailing edge.
                        Text("Details go here.")
                            .transition(.slide)

                        // Starts small and grows to full size.
                        Text("Details go here.")
                            .transition(.scale)
                    }
                }
    }
}

struct TransitionThird_Previews: PreviewProvider {
    static var previews: some View {
        TransitionThird()
            .preferredColorScheme(.dark)
    }
}
