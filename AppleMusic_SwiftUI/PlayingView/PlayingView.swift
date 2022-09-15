//
//  PlayingView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import SwiftUI

struct PlayingView: View {
    
    @State private var playButton = true
    
    var body: some View {
        VStack {
            Divider()
            
            HStack(alignment: .center){
                Image(PlayingViewConstants.image)
                    .resizable()
                    .frame(width: PlayingViewMetrics.imageSize, height: PlayingViewMetrics.imageSize)
                    .cornerRadius(PlayingViewMetrics.imageCornerRadius)
                    .scaledToFill()
                    .clipped()
                    .padding([.leading, .trailing, .top, .bottom], PlayingViewMetrics.imagePadding)
                
                Text(PlayingViewConstants.playingText)
                
                Spacer()
                
                Button(action: {
                    print("Play buttom pressed")
                }) {
                    Image(systemName: SFSymbols.playButton)
                }
                .foregroundColor(Color.black)
                .padding(.horizontal, PlayingViewMetrics.playButtonPadding)
                
                Button(action: {
                    print("Next track buttom pressed")
                }) {
                    Image(systemName: SFSymbols.forwardButton)
                }
                .foregroundColor(Color.black)
                .padding(.horizontal, PlayingViewMetrics.forwardButtonPadding)
                
            }
            .frame(height: PlayingViewMetrics.playingStackHeight)
            
            Divider()
        }
        .background(.white)
    }
}

struct PlayingView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingView()
    }
}
