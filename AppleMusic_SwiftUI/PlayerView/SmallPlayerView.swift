//
//  SmallPlayerView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 18.09.2022.
//

import SwiftUI

struct SmallPlayerView: View {
    
    @State var isPlayTap: Bool = false
    @State var isNextTap: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .center) {
                Image(SmallPlayerConstants.image)
                    .resizable()
                    .cornerRadius(SmallPlayerMetrics.cornerRadius)
                    .frame(width: SmallPlayerMetrics.imageSize, height: SmallPlayerMetrics.imageSize)
                    .padding(.init(top: SmallPlayerMetrics.imageTopAndBottom, leading: SmallPlayerMetrics.imageLeading, bottom: SmallPlayerMetrics.imageTopAndBottom, trailing: 0))
                
                Text(SmallPlayerConstants.playingText)
                    .font(Font(.init(.application, size: SmallPlayerMetrics.textFontSize)))
                
                Spacer()
                
                Button(action: playButtonTap) {
                    Image(systemName: isPlayTap ? SFSymbols.pauseButton : SFSymbols.playButton)
                        .resizable()
                        .frame(width: SmallPlayerMetrics.buttonSize, height: SmallPlayerMetrics.buttonSize)
                        .foregroundColor(.primary)
                }
                
                Button(action: nextButtonTap) {
                    Image(systemName: SFSymbols.forwardButton)
                        .resizable()
                        .frame(width: SmallPlayerMetrics.buttonSize, height: SmallPlayerMetrics.buttonSize)
                        .foregroundColor(.primary)
                        .padding(.init(top: 0, leading: SmallPlayerMetrics.forwardButtonLeading, bottom: 0, trailing: SmallPlayerMetrics.forwardButtonTrailing))
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
            .background(Color.init(uiColor: .systemBackground))
        }
    }
}

struct SmallPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        SmallPlayerView()
    }
}

//MARK: - Extensions
extension SmallPlayerView {
    private func playButtonTap() {
        isPlayTap = !isPlayTap
        print("Play button tapped")
    }
    
    private func nextButtonTap() {
        isNextTap = !isNextTap
        print("Next button tapped")
    }
}
