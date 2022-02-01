//
//  SinglePhotoZoom.swift

import SwiftUI

struct SinglePhotoZoom: View {
    @State private var showSheet = false
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    @State private var unzoomed = true // Single tap to fit to center
    @State private var fullscreen = false // Double tap to transition sbetween fit center and fullscreen
    
    var body: some View {
        if unzoomed {
            HStack(alignment: .bottom) {
                Image("user_chew")
                    .resizable()
                    .frame(width: 36, height: 36)
                
                // Photo
                VStack(alignment: .leading) {
                    Image("iceland2")
                        .resizable()
                        .frame(width: 252, height: 188)
                        .cornerRadius(16)
                        .onTapGesture {
                            unzoomed = false
                        }
                        
                    Text("Toronto time  21.00 PM")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        } else {
            VStack {
                HStack {
                    Image(systemName: "xmark")
                        .onTapGesture {
                            unzoomed = true
                        }
                    
                    Spacer()
                    
                    VStack {
                        Text("Count Dooku")
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
                    Image("iceland2")
                        .resizable()
                        .aspectRatio(contentMode: fullscreen ? .fill : .fit)
                        .onTapGesture(count: 2) {
                            // Use a damping value between 15 and 30
                            withAnimation (.interpolatingSpring(stiffness: 170, damping: 30)){
                                fullscreen.toggle()
                            }
                           
                        }
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
}

struct SinglePhotoZoom_Previews: PreviewProvider {
    static var previews: some View {
        SinglePhotoZoom()
            .preferredColorScheme(.dark)
    }
}
