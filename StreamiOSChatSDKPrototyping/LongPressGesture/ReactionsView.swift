//
//  ContentView.swift
//  Stream iOS Chat SDK Prototyping
//
//  Created by amos.gyamfi@getstream.io on 14.10.2021.
//

import SwiftUI

struct ReactionsView: View {
    
    let reactionsBGColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    @State private var showReactionsBG = 0
    @State private var showLOLReaction = 0
    @State private var showLikeReaction = 0
    @State private var showLoveReaction = 0
    @State private var showUnlikeReaction = 0
    @State private var rotateThumb = -45
    @State private var showWhatReaction = 14
    
    // Like Animation States
    @State private var notLiked = true
    @State private var numberOfLikes = 0
    @State private var removeInnerStroke = 14
    @State private var chromaRotate = 0
    @State private var animateTopPlus = 1
    @State private var animateMiddlePlus = 1
    @State private var animateBottomPlus = 1
    
    //@State private var showReactionsBackground = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .frame(width: 216, height: 40)
                .foregroundColor(reactionsBGColor)
                //.scaleEffect(Double(showReactionsBG), anchor: .topTrailing)
                //.animation(.interpolatingSpring(stiffness: 170, damping: 15).delay(0.05), value: showReactionsBG)
                
            HStack(spacing: 20) {
                ZStack{
                    // When the heart icon is not tapped
                    if notLiked {
                        Image("like")
                            //.scaleEffect(Double(showLoveReaction))
                    } else {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 24))
                            .frame(width: 24, height: 21)
                            .foregroundColor(Color(.systemPink))
                        
                        ZStack {
                            Circle()
                                .strokeBorder(lineWidth: CGFloat(removeInnerStroke))
                                .frame(width: 28, height: 28)
                                .foregroundColor(Color(.systemPink))
                                .hueRotation(.degrees(Double(chromaRotate)))
                            VStack {
                                Image(systemName: "heart.fill")
                                    .scaleEffect(CGFloat(animateTopPlus))
                                    .foregroundColor(Color(.systemPink))
                                Image(systemName: "plus")
                                    .scaleEffect(CGFloat(animateMiddlePlus))
                                Image(systemName: "heart.fill")
                                    .scaleEffect(CGFloat(animateBottomPlus))
                                    .foregroundColor(Color(.systemPink))
                            }
                        }
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.25)){
                        notLiked.toggle()
                    }
                    
                    withAnimation(.easeOut(duration: 0.5)){
                        removeInnerStroke = 0
                        chromaRotate = 270
                    }
                    
                    withAnimation(.easeOut(duration: 0.5).delay(0.1)){
                        animateTopPlus = 0
                    }
                    
                    withAnimation(.easeInOut(duration: 0.5).delay(0.2)){
                        animateMiddlePlus = 0
                    }
                    
                    withAnimation(.spring()){
                        animateBottomPlus = 0
                    }
                }
                
                Image("thumbs_up")
                    //.scaleEffect(Double(showLikeReaction))
                    //.rotationEffect(.degrees(Double(rotateThumb)), anchor: .bottomLeading)
                Image("thumbs_down")
                    //.scaleEffect(Double(showUnlikeReaction))
                    //.rotationEffect(.degrees(Double(rotateThumb)), anchor: .topTrailing)
                Image("lol")
                    //.scaleEffect(Double(showLOLReaction))
                Image("wut_reaction")
                    //.scaleEffect(Double(showWhatReaction))
            }
           
        } // All reaction views
    }
}

struct ReactionsView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionsView()
            .preferredColorScheme(.dark)
    }
}
