//
//  PhotosGalleryZoom.swift

import SwiftUI

struct PhotosGalleryZoom: View {
    
    @State private var zoom = false
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                    .onTapGesture {
                        zoom = false
                    }
                
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
                Image("iceland2")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
                Image("iceland7")
                    .resizable()
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
                Image("iceland3")
                    .resizable()
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
                Image("iceland4")
                    .resizable()
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
                Image("iceland5")
                    .resizable()
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
                Image("iceland6")
                    .resizable()
                    .aspectRatio(contentMode: zoom ? .fill : .fit)
                    .onTapGesture(count: 2) {
                        withAnimation(.interpolatingSpring(stiffness: 170, damping: 30)){
                            zoom.toggle()
                        }
                    }
            } // This creates paging interaction
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

struct PhotosGalleryZoom_Previews: PreviewProvider {
    static var previews: some View {
        PhotosGalleryZoom()
            .preferredColorScheme(.dark)
    }
}
