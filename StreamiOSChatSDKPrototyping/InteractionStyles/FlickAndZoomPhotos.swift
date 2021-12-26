//
//  FlickAndZoomPhotos.swift
//  StreamiOSChatSDKPrototyping

// Creates Page Scrolling Style Interaction for Photos (with index display mode)
// Swipping or flicking through photos in a photo gallery
// ALWAYS: Use the "page" tabview style and set the index tab view style to "always"
// Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct FlickAndZoomPhotos: View {
    
    @State private var zoom = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                
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
                    
            }
            .font(.title2)
            
            TabView{
                Image("catalina1")
                    .cornerRadius(10)
                Image("catalina2")
                Image("catalina3")
                    .resizable()
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
                Image("catalina2")
                Image("catalina1")
                Image("catalina3")
            }
            //.tabViewStyle(PageTabViewStyle())
            //.tabViewStyle(.automatic)
            .tabViewStyle(.page)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            
            Spacer()
            
            HStack {
                Image(systemName: "square.and.arrow.up")
                Spacer()
            }
        } // All views
        .padding()
    }
}

struct FlickAndZoomPhotos_Previews: PreviewProvider {
    static var previews: some View {
        FlickAndZoomPhotos()
            .preferredColorScheme(.dark)
    }
}
