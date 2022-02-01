//
//  ReactionsView.swift
//  Stream iOS Chat SDK Prototyping
//
//  Created by Amos from getstream.io on 09.01.2022.
//

import SwiftUI

struct ReactionsView: View {
    
    let reactionsBGColor = Color(#colorLiteral(red: 0.07058823529, green: 0.07843137255, blue: 0.0862745098, alpha: 1))
    
    // Like Animation States
    @State private var notLiked = true
    @State private var removeInnerStroke = 14
    @State private var chromaRotate = 0
    @State private var animateTopPlus = 1
    @State private var animateMiddlePlus = 1
    @State private var animateBottomPlus = 1

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .frame(width: 216, height: 40)
                .foregroundColor(reactionsBGColor)
                
            HStack(spacing: 20) {
                ZStack{
                    // When the heart icon is not tapped
                    if notLiked {
                        Image("like")
                            
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
                Image("thumbs_down")
                Image("lol")
                Image("wut_reaction")
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
