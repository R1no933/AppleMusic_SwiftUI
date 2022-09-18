//
//  FullScreenPlayerView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 18.09.2022.
//

import SwiftUI

struct FullScreenPlayerView: View {
    
    @State var startPoint = 5.0
    @State var finishPoint = 311.0
    @State var isEdinitg = false
    @State var isPlayTap: Bool = false
    @State var isNextTap: Bool = false
    @State var volumeLevel = 0.5
    
    var widthFrame = UIScreen.main.bounds.width
    var heightFrame = UIScreen.main.bounds.height + 30
    
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image(FullscreenPlayerConstants.image)
                    .resizable()
                    .cornerRadius(FullScreenPlayerMetrics.corenerRadius)
                    .frame(width: FullScreenPlayerMetrics.imageSize, height: FullScreenPlayerMetrics.imageSize)
            }
            .padding(.bottom, 30)
            
            HStack(alignment: .center) {

                VStack(alignment: .leading) {
                    Text(FullscreenPlayerConstants.song)
                        .font(.title)
                        .foregroundColor(.primary)
                    Text(FullscreenPlayerConstants.artist)
                        .font(Font(.init(.application, size: FullScreenPlayerMetrics.textSize)))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Button(action: infoButtonTap) {
                    Image(systemName: SFSymbols.elipsis)
                        .foregroundColor(.primary)
                        .font(.title)
                }
            }
            
            VStack {
                Slider(value: $startPoint, in: Double(0)...Double(finishPoint)) { editing in
                    isEdinitg = editing
                }
                .accentColor(.primary)
                
                HStack {
                    Text("\(changedTime(time: startPoint))")
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Text(" - \(changedTime(time: (finishPoint - startPoint)))")
                        .foregroundColor(.primary)
                }
            }
            
            HStack {
                Spacer()
                
                Button(action: backwardButtonTap) {
                    Image(systemName: SFSymbols.backwardButton)
                        .resizable()
                        .foregroundColor(.primary)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: FullScreenPlayerMetrics.buttonSize, height: FullScreenPlayerMetrics.buttonSize)
                }
                
                Spacer()
                
                Button(action: playButtonTap) {
                    Image(systemName: isPlayTap ? SFSymbols.pauseButton : SFSymbols.playButton)
                        .resizable()
                        .foregroundColor(.primary)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: FullScreenPlayerMetrics.buttonSize, height: FullScreenPlayerMetrics.buttonSize)
                }
                
                Spacer()
                
                Button(action: nextButtonTap) {
                    Image(systemName: SFSymbols.forwardButton)
                        .resizable()
                        .foregroundColor(.primary)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: FullScreenPlayerMetrics.buttonSize, height: FullScreenPlayerMetrics.buttonSize)
                }
                
                Spacer()
            }
            .padding(.bottom, 60)
            
            HStack {
                Image(systemName: SFSymbols.leftSpeaker)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Slider(value: $volumeLevel, in: 0...1, step: 0.05)
                    .font(.title2)
                
                Spacer()
                
                Image(systemName: SFSymbols.rightSpeaker)
                    .foregroundColor(.primary)
            }
            .padding(.bottom, 30)
            
            HStack {
                Spacer()
                
                Button(action: songTextButtonTap) {
                    Image(systemName: SFSymbols.songText)
                        .foregroundColor(.primary)
                        .font(.title2)
                }
                
                Spacer()
                
                Button(action: airPlayButtonTap) {
                    Image(systemName: SFSymbols.airPlay)
                        .foregroundColor(.primary)
                        .font(.title2)
                }
                
                Spacer()
                
                Button(action: playlistButtonTap) {
                    Image(systemName: SFSymbols.playlist)
                        .foregroundColor(.primary)
                        .font(.title2)
                }
                
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .padding(.init(top: FullScreenPlayerMetrics.mainStackPadding, leading: FullScreenPlayerMetrics.mainStackPadding, bottom: 0, trailing: FullScreenPlayerMetrics.mainStackPadding))
        .frame(width: widthFrame, height: heightFrame)
    }
}

extension FullScreenPlayerView {
    private func infoButtonTap() {
        print(Text("Info button tapped"))
    }
    
    private func playButtonTap() {
        isPlayTap = !isPlayTap
        print("Play button tapped")
    }
    
    private func nextButtonTap() {
        isNextTap = !isNextTap
        print("Next button tapped")
    }
    
    private func backwardButtonTap() {
        print("Backward button tapped")
    }
    
    private func songTextButtonTap() {
        print("Song text button tapped")
    }
    
    private func airPlayButtonTap() {
        print("Air play button tapped")
    }
    
    private func playlistButtonTap() {
        print("Playlist button tapped")
    }
    
    private func changedTime(time: Double) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        
        return String(format: "%02i.%02i", minutes, seconds)
    }
}
