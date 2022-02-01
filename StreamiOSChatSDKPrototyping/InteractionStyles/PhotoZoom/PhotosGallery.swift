//
//  PhotosGallery.swift

import SwiftUI

struct PhotosGallery: View {
    @State private var showSheet = false
    let inboundBubbleColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    @State private var unzoomed = true // Single tap to fit to center
    @State private var fullscreen = false // Double tap to transition sbetween fit center and fullscreen
    
    var body: some View {
       
            HStack(alignment: .bottom) {
                Image("user_chew")
                    .resizable()
                    .frame(width: 36, height: 36)
                
                // Photo
                VStack(alignment: .leading) {
                    ZStack {
                        VStack(spacing: 1) {
                            HStack(spacing: 1) {
                                Image("iceland2")
                                    .resizable()
                                    .frame(width: 126, height: 94)
                                    .preferredColorScheme(.dark)
                                    .sheet(isPresented: $showSheet) {
                                        PhotosGalleryZoom()
                                            }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                    
                                Image("iceland3")
                                    .resizable()
                                    .frame(width: 126, height: 94)
                                    .sheet(isPresented: $showSheet) {
                                        PhotosGalleryZoom()
                                            }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                            }
                            HStack(spacing: 1) {
                                Image("iceland5")
                                    .resizable()
                                    .frame(width: 126, height: 94)
                                    .sheet(isPresented: $showSheet) {
                                        PhotosGalleryZoom()
                                            }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                                Image("iceland7")
                                    .resizable()
                                    .frame(width: 126, height: 94)
                                    .sheet(isPresented: $showSheet) {
                                        PhotosGalleryZoom()
                                            }
                                    .onTapGesture {
                                        showSheet.toggle()
                                    }
                            }
                        }
                    }
                    .frame(width: 252, height: 188)
                    .cornerRadius(16)
                        
                    Text("Toronto time  21.00 PM")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
    }
}

struct PhotosGallery_Previews: PreviewProvider {
    static var previews: some View {
        PhotosGallery()
            .preferredColorScheme(.dark)
    }
}
